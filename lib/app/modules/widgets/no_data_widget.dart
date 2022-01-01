import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';

class NoDataWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final String? message;

  const NoDataWidget({
    Key? key,
    this.message,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: padding,
      child: Text(
        message ?? Strings.noDataAvailable,
        style: AppTextStyle.semiBoldStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
