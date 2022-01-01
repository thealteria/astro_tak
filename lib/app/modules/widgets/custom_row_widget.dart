import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';

class CustomRowWidget extends TableRow {
  final String title, subtitle;

  CustomRowWidget({
    LocalKey? key,
    required this.title,
    required this.subtitle,
  }) : super(
          key: key,
          children: [
            Text(
              '$title:',
              style: AppTextStyle.regularStyle.copyWith(
                fontSize: Dimens.fontSize14,
                color: AppColors.silverChalice,
              ),
            ),
            20.widthBox,
            Text(
              subtitle,
              style: AppTextStyle.regularStyle.copyWith(
                fontSize: Dimens.fontSize14,
                color: AppColors.silverChalice,
              ),
            ),
          ],
        );
}
