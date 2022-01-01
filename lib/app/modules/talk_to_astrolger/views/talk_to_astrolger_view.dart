import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/widgets/astrologers_listview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/talk_to_astrolger_controller.dart';

class TalkToAstrolgerView extends GetView<TalkToAstrolgerController> {
  const TalkToAstrolgerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.heightBox,
          Text(
            Strings.talkToAstrologer,
            style: AppTextStyle.boldStyle.copyWith(
              fontSize: Dimens.fontSize22,
            ),
          ),
          15.heightBox,
          const AstrologersListView(),
        ],
      ),
    );
  }
}
