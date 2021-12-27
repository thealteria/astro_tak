import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/modules/home/controllers/home_controller.dart';
import 'package:astro_tak/app/modules/widgets/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            itemCount: controller.dataList.length,
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final dynamic _data = controller.dataList[index];

              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title: ${_data['title'].toString()}',
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Body: ${_data['body'].toString()}',
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
