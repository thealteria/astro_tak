import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanchangRowWidget extends StatelessWidget {
  final String title;
  final Widget child;

  const PanchangRowWidget({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '$title:',
          style: AppTextStyle.regularStyle.copyWith(
            fontSize: Dimens.fontSize18,
            color: AppColors.silverChalice,
          ),
        ),
        15.widthBox,
        SizedBox(
          width: Get.width * .63,
          child: child,
        ),
      ],
    );
  }
}
