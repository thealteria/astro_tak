import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/home/views/home_view.dart';
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
    const HomeView(),
  ];

  void changeTabIndex(int value) {
    currentIndex = value;
    update();
  }
}
