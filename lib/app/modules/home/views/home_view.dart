import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/home/controllers/home_controller.dart';
import 'package:astro_tak/app/modules/widgets/base_widget.dart';
import 'package:astro_tak/app/modules/widgets/custom_autocomplete_widget.dart';
import 'package:astro_tak/app/modules/widgets/custom_row_widget.dart';
import 'package:astro_tak/app/modules/widgets/panchang_text_field.dart';
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
            15.heightBox,
            Text(
              Strings.panchangeDescription,
              style: AppTextStyle.regularStyle.copyWith(
                fontSize: Dimens.fontSize14,
                color: AppColors.silverChalice,
              ),
            ),
            10.heightBox,
            Container(
              color: AppColors.serenade,
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 22.h,
              ),
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PanchangRowWidget(
                    title: Strings.date,
                    child: PanchangeTextField(
                      controller: controller.dateController,
                      hintText: Strings.date,
                      onTap: controller.onDateSelect,
                    ),
                  ),
                  15.heightBox,
                  PanchangRowWidget(
                    title: Strings.location,
                    child: CustomAutoCompleteWidget(
                      hint: Strings.location,
                      controller: controller.locationController,
                      list: const [
                        'am',
                        'aman',
                        'amamama',
                        'amammaamcacccccsddddswdwsdwsdwsdwd',
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
