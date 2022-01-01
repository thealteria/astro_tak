import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/talk_to_astrolger/controllers/talk_to_astrolger_controller.dart';
import 'package:astro_tak/app/modules/widgets/astrologer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'no_data_widget.dart';

class AstrologersListView extends StatelessWidget {
  const AstrologersListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<TalkToAstrolgerController>(
        builder: (c) => c.astrologersList.isEmpty
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
                itemCount: c.astrologersList.length,
                itemBuilder: (_, i) {
                  final data = c.astrologersList[i];

                  return AstrologerWidget(
                    data: data,
                    onCallTap: () {},
                  );
                },
              ),
      ),
    );
  }
}
