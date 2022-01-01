import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/models/astrologer/astrologer_data.dart';
import 'package:astro_tak/app/modules/widgets/astrologer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'no_data_widget.dart';

class AstrologersListView extends StatelessWidget {
  final List<AstrologerData> list;
  final VoidCallback onCallTap;

  const AstrologersListView({
    Key? key,
    required this.list,
    required this.onCallTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: list.isEmpty
          ? const NoDataWidget()
          : ListView.separated(
              separatorBuilder: (c, i) => Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 10.w,
                ),
                child: const Divider(),
              ),
              shrinkWrap: true,
              padding: EdgeInsets.all(16.w),
              itemCount: list.length,
              itemBuilder: (_, i) {
                final data = list[i];

                return AstrologerWidget(
                  data: data,
                  onCallTap: onCallTap,
                );
              },
            ),
    );
  }
}
