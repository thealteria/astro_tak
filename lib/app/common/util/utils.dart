import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/widgets/custom_inkwell_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  const Utils._();

  static void showDialog(
    String? message, {
    String title = Strings.error,
    bool success = false,
    VoidCallback? onTap,
  }) =>
      Get.defaultDialog(
        barrierDismissible: false,
        onWillPop: () async {
          Get.back();

          onTap?.call();

          return true;
        },
        title: success ? Strings.success : title,
        content: Text(
          message ?? Strings.somethingWentWrong,
          textAlign: TextAlign.center,
          maxLines: 6,
          style: AppTextStyle.semiBoldStyle.copyWith(
            color: AppColors.mineShaft,
            fontSize: Dimens.fontSize16,
          ),
        ),
        confirm: Align(
          alignment: Alignment.centerRight,
          child: CustomInkwellWidget.text(
            onTap: () {
              Get.back();

              onTap?.call();
            },
            title: Strings.ok,
            textStyle: AppTextStyle.buttonTextStyle.copyWith(
              fontSize: Dimens.fontSize18,
            ),
          ),
        ),
      );

  static void loadingDialog() {
    Utils.closeDialog();

    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
      name: 'loadingDialog',
    );
  }

  static void closeDialog() {
    if (Get.isDialogOpen == true) {
      Get.back();
    }
  }

  static void closeSnackbar() {
    if (Get.isSnackbarOpen == true) {
      Get.back();
    }
  }

  static void showSnackbar(String? message) {
    closeSnackbar();

    Get.rawSnackbar(message: message);
  }

  static void closeKeyboard() {
    final currentFocus = Get.focusScope!;
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static void goBackToScreen(String routeName) {
    Get.until(
      (route) => route.settings.name == routeName,
    );
  }

  static void datePicker(
    Function(DateTime dateTime) onSelectDate, {
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
  }) {
    showDatePicker(
      context: Get.overlayContext!,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime.now(),
      lastDate: lastDate ?? DateTime(DateTime.now().year + 20),
    ).then((data) {
      if (data != null) {
        onSelectDate(data);
      }
    });
  }
}
