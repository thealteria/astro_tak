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
    return Scaffold(
      appBar: CustomAppbarWidget(
        centerTitle: true,
        leading: AppImages.icHam.imageAsset(size: 65),
        titleWidget: AppImages.icLogo.imageAsset(size: 65),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: AppImages.icProfile.imageAsset(size: 45),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<DashboardController>(
        builder: (controller) => BottomBarWidget(
          onTap: controller.changeTabIndex,
          currentIndex: controller.currentIndex,
          bottomNavIcons: controller.bottomNavIcons,
        ),
      ),
      body: GetBuilder<DashboardController>(
        builder: (controller) => Container(
          color: Get.theme.backgroundColor,
          child: controller.widgets[controller.currentIndex],
        ),
      ),
    );
  }
}
