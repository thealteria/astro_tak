import 'package:astro_tak/app/data/api_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ApiHelper _apiHelper = Get.find();

  final dateController = TextEditingController();
  final locationController = TextEditingController();

  DateTime selectedDateTime = DateTime.now();

  void onDateSelect() {
    Utils.datePicker(
      (dateTime) {
        selectedDateTime = dateTime;

        dateController.text = dateTime.formatedDate(
          dateFormat: 'dd MMMM, yyyy',
        );
      },
      firstDate: DateTime(2000),
    );
  }
}
