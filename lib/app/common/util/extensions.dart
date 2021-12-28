import 'package:astro_tak/app/common/constants.dart';
import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/data/errors/api_error.dart';
import 'package:astro_tak/app/data/interface_controller/api_interface_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Extensions {}

extension BorderRadiusExt on num {
  BorderRadius get borderRadius => BorderRadius.circular(this.r);

  InputBorder outlineInputBorder({
    BorderSide borderSide = BorderSide.none,
  }) =>
      OutlineInputBorder(
        borderRadius: this.borderRadius,
        borderSide: borderSide,
      );

  BorderSide borderSide({
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      BorderSide(
        color: color ?? Colors.white,
        width: this.toDouble(),
        style: style ?? BorderStyle.solid,
      );

  SizedBox get heightBox => SizedBox(height: this.h);
  SizedBox get widthBox => SizedBox(width: this.w);
}

extension FutureExt<T> on Future<Response<T>?> {
  void futureValue(
    Function(T value) response, {
    Function(String? error)? onError,
    required VoidCallback retryFunction,
  }) {
    final _interface = Get.find<ApiInterfaceController>();
    _interface.error = null;

    Utils.loadingDialog();

    this.timeout(
      Constants.timeout,
      onTimeout: () {
        Utils.closeDialog();

        Utils.showSnackbar(Strings.connectionTimeout);

        _retry(_interface, retryFunction);

        throw ApiError(
          type: ErrorType.connectTimeout,
          error: Strings.connectionTimeout,
        );
      },
    ).then((value) {
      if (value?.body != null) {
        Utils.closeDialog();
        response(value!.body!);
      }
      _interface.update();
    }).catchError((e) {
      if (e == null) return;

      final String errorMessage = e is ApiError ? e.message : e.toString();

      if (e is ApiError) {
        if ((e.type == ErrorType.connectTimeout ||
            e.type == ErrorType.noConnection)) {
          _interface.error = e;

          _retry(_interface, retryFunction);
        } else {
          Utils.showDialog(errorMessage);
        }
      }

      if (onError != null) {
        onError(errorMessage);
      }

      printError(info: 'catchError: error: $e\nerrorMessage: $errorMessage');
    });
  }

  void _retry(
    ApiInterfaceController _interface,
    VoidCallback retryFunction,
  ) {
    _interface.retry = retryFunction;
    _interface.update();
  }
}

extension FormatDurationExt on int {
  String formatDuration() {
    final min = this ~/ 60;
    final sec = this % 60;
    return "${min.toString().padLeft(2, "0")}:${sec.toString().padLeft(2, "0")} min";
  }
}

extension ImageWidgetExt on String {
  Widget imageAsset({
    double? size,
    Color? color,
  }) {
    return Image.asset(
      this,
      height: size?.w,
      width: size?.w,
      color: color,
    );
  }
}
