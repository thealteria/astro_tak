import 'dart:ui';

import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';

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
          width: ((window.physicalSize / window.devicePixelRatio).width - 40) *
              .63,
          child: child,
        ),
      ],
    );
  }
}
