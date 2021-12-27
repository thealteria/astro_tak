import 'package:astro_tak/app/data/errors/api_error.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ApiInterfaceController extends GetxController {
  ApiError? error;

  VoidCallback? retry;

  void onRetryTap() {
    error = null;
    retry?.call();
    update();
  }
}
