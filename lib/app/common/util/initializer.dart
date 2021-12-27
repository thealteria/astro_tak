import 'dart:async';

import 'package:astro_tak/app/data/api_helper.dart';
import 'package:astro_tak/app/data/api_helper_impl.dart';
import 'package:astro_tak/app/data/interface_controller/api_interface_controller.dart';
import 'package:astro_tak/app/modules/widgets/custom_error_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Initializer {
  static const Initializer instance = Initializer._internal();
  factory Initializer() => instance;
  const Initializer._internal();

  void init(VoidCallback runApp) {
    ErrorWidget.builder = (errorDetails) {
      return CustomErrorWidget(
        message: errorDetails.exceptionAsString(),
      );
    };

    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (details) {
        FlutterError.dumpErrorToConsole(details);
        printInfo(info: details.stack.toString());
      };

      await _initServices();
      runApp();
    }, (error, stack) {
      printInfo(info: 'runZonedGuarded: ${error.toString()}');
    });
  }

  Future<void> _initServices() async {
    try {
      _initScreenPreference();
    } catch (err) {
      rethrow;
    }
  }

  void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiHelper>(
      ApiHelperImpl(),
    );

    Get.put<ApiInterfaceController>(
      ApiInterfaceController(),
    );
  }
}
