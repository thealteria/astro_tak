import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/widgets/astrologers_listview.dart';
import 'package:astro_tak/app/modules/widgets/search_field_widget.dart';
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
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              Strings.talkToAstrologer,
              style: AppTextStyle.boldStyle.copyWith(
                fontSize: Dimens.fontSize22,
              ),
            ),
            actions: [
              IconButton(
                onPressed: controller.onSearchTap,
                icon: AppImages.icSearch.imageAsset(),
              ),
              IconButton(
                onPressed: controller.onFilterTap,
                icon: AppImages.icFilter.imageAsset(),
              ),
              IconButton(
                onPressed: controller.onSortTap,
                icon: AppImages.icSort.imageAsset(),
              ),
            ],
          ),
          15.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Obx(
              () => controller.isSearchEnable
                  ? Card(
                      elevation: 5,
                      child: SearchFieldWidget(
                        controller: controller.searchController,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
          15.heightBox,
          GetBuilder<TalkToAstrolgerController>(builder: (c) {
            return AstrologersListView(
              list: c.searchController.text.isNotEmpty
                  ? c.searchAstrologersList
                  : c.astrologersList,
              onCallTap: c.onCallTap,
            );
          }),
        ],
      ),
    );
  }
}
