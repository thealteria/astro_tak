import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/home/views/home_view.dart';
import 'package:astro_tak/app/modules/talk_to_astrolger/controllers/talk_to_astrolger_controller.dart';
import 'package:astro_tak/app/modules/talk_to_astrolger/views/talk_to_astrolger_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  int currentIndex = 0;

  final Map<String, String> bottomNavIcons = {
    Strings.home: AppImages.icHome,
    Strings.talkToAstrologer: AppImages.icTalk,
  };

  final List<Widget> widgets = [
    const HomeView(),
    const TalkToAstrolgerView(),
  ];

  void changeTabIndex(int value) {
    currentIndex = value;
    update();

    switch (value) {
      case 0:
        break;
      case 1:
        if (Get.isRegistered<TalkToAstrolgerController>()) {
          Get.find<TalkToAstrolgerController>().onReady();
        }
        break;
    }
  }
}
