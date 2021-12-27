import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/widgets/bottom_bar_widget.dart';
import 'package:astro_tak/app/modules/widgets/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        appBar: CustomAppbarWidget(
          centerTitle: true,
          titleWidget: Image.asset(
            AppImages.icLogo,
            width: 65.w,
            height: 65.w,
          ),
        ),
        bottomNavigationBar: BottomBarWidget(
          onTap: controller.changeTabIndex,
          currentIndex: controller.currentIndex,
          bottomNavIcons: controller.bottomNavIcons,
        ),
        body: Container(
          color: Get.theme.backgroundColor,
          child: controller.widgets[controller.currentIndex],
        ),
      ),
    );
  }
}
