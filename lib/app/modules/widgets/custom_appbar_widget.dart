import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbarWidget extends PreferredSize {
  final String? title;
  final Color? backgroundColor, backbuttonColor, textColor;
  final TextStyle? textStyle;
  final List<Widget>? actions;
  final Function()? onActionButtonTap, onBackPress;
  final double? actionButtonWidth;
  final Widget? titleWidget, leading, bottom;
  final bool? centerTitle;

  CustomAppbarWidget({
    Key? key,
    this.title,
    this.titleWidget,
    this.leading,
    this.onBackPress,
    this.backgroundColor,
    this.backbuttonColor = Colors.white,
    this.textColor,
    this.textStyle,
    this.actions,
    this.onActionButtonTap,
    this.actionButtonWidth = 100,
    this.bottom,
    this.centerTitle,
  })  : assert(
          textColor == null || textStyle == null,
          'Cannot provide both a textColor and a textStyle\n'
          'To provide both, use "textStyle: TextStyle(color: color)".',
        ),
        super(
          key: key,
          child: const SizedBox.shrink(),
          preferredSize:
              Size.fromHeight(bottom == null ? kToolbarHeight : 98.h),
        );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      elevation: 0,
      actions: actions,
      bottom: bottom == null
          ? null
          : PreferredSize(
              preferredSize: Size.fromHeight(100.h),
              child: bottom!,
            ),
      leading: leading,
      leadingWidth: 45.w,
      backgroundColor: backgroundColor ?? Get.theme.appBarTheme.backgroundColor,
      title: title == null
          ? (titleWidget ?? const SizedBox.shrink())
          : Text(
              title!,
              style: textStyle ??
                  AppTextStyle.boldStyle.copyWith(
                    color: textColor ??
                        (backgroundColor == Colors.white
                            ? AppColors.mineShaft
                            : Colors.white),
                    fontSize: Dimens.fontSize18,
                  ),
            ),
    );
  }
}
