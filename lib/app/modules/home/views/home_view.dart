import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/home/controllers/home_controller.dart';
import 'package:astro_tak/app/modules/widgets/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.dailyPanchang,
              style: AppTextStyle.boldStyle.copyWith(
                fontSize: Dimens.fontSize22,
              ),
            ),
            10.heightBox,
            Text(
              Strings.panchangeDescription,
              style: AppTextStyle.boldStyle.copyWith(
                fontSize: Dimens.fontSize14,
                color: AppColors.silverChalice,
              ),
            ),
            10.heightBox,
          ],
        ),
      ),
    );
  }
}
