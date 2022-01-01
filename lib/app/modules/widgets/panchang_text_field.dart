import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';

import 'custom_text_field_widget.dart';

class PanchangeTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onTap;

  const PanchangeTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldWidget(
      suffixIcon: hintText == Strings.date
          ? Icon(
              Icons.arrow_drop_down,
              size: 30.w,
              color: AppColors.black,
            )
          : null,
      controller: controller,
      readOnly: onTap != null,
      hintText: hintText,
      onTap: onTap,
    );
  }
}
