import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAutoCompleteWidget extends StatelessWidget {
  final TextEditingController? controller;
  final List<String> list;
  final String hint;
  final Function(String)? onSelected;
  final TextInputType? textInputType;

  const CustomAutoCompleteWidget({
    Key? key,
    this.controller,
    required this.list,
    required this.hint,
    this.onSelected,
    this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<String>(
      textEditingController: controller,
      focusNode: controller == null ? null : FocusNode(),
      optionsBuilder: (textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return const Iterable<String>.empty();
        }

        return list.where(
          (option) {
            return option.toLowerCase().startsWith(
                  textEditingValue.text.toLowerCase(),
                );
          },
        );
      },
      onSelected: (selection) {
        controller?.text = selection;

        onSelected?.call(selection);
      },
      fieldViewBuilder: (
        _,
        textEditingController,
        focusNode,
        onFieldSubmitted,
      ) {
        return TextFormField(
          controller: textEditingController,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            hintStyle: AppTextStyle.regularStyle.copyWith(
              fontSize: Dimens.fontSize12,
              color: AppColors.black,
            ),
          ),
          focusNode: focusNode,
        );
      },
      optionsViewBuilder: (
        _,
        onSelected,
        options,
      ) {
        return Container(
          alignment: Alignment.topLeft,
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: 200.h,
              color: AppColors.white,
              width: Get.width * .4,
              margin: EdgeInsets.only(top: 12.w),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(2.w),
                children: options.map(
                  (option) {
                    if (list.isEmpty) {
                      return const ListTile(
                        title: Text(Strings.noResultsFound),
                      );
                    }
                    return ListTile(
                      dense: true,
                      title: Text(option),
                      onTap: () {
                        onSelected(option);
                      },
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
