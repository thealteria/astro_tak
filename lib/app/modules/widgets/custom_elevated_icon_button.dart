import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';

class CustomElevatedIconButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget icon;
  final double? buttonWidth;
  final double height;

  const CustomElevatedIconButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.icon,
    this.height = 45  ,
    this.buttonWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(
        title,
        style: AppTextStyle.buttonTextStyle.copyWith(
          fontSize: Dimens.fontSize16,
          color: AppColors.white,
        ),
      ),
      style: AppTheme.theme.elevatedButtonTheme.style?.copyWith(
        minimumSize: MaterialStateProperty.resolveWith<Size>(
          (states) => buttonWidth == null
              ? Size.fromHeight(height.h)
              : Size(
                  buttonWidth!,
                  height.h,
                ),
        ),
      ),
    );
  }
}
