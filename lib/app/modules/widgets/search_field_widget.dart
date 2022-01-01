import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const SearchFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldWidget(
      validator: null,
      hintText: 'Search Astrologer',
      controller: controller,
      prefixIcon: const Icon(
        Icons.search,
        color: AppColors.kPrimaryColor,
      ),
      suffixIcon: IconButton(
        icon: const Icon(Icons.close),
        color: AppColors.kPrimaryColor,
        onPressed: () => controller.clear(),
      ),
    );
  }
}
