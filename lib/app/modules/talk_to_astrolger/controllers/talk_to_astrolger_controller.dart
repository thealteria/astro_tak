import 'package:astro_tak/app/data/api_helper.dart';
import 'package:astro_tak/app/models/astrologer/astrologer_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TalkToAstrolgerController extends GetxController {
  final ApiHelper _apiHelper = Get.find();

  final RxList<AstrologerData> _astrologersList = <AstrologerData>[].obs;
  List<AstrologerData> get astrologersList => _astrologersList;
  set astrologersList(List<AstrologerData> v) => _astrologersList.assignAll(v);

  final RxList<AstrologerData> _searchAstrologersList = <AstrologerData>[].obs;
  List<AstrologerData> get searchAstrologersList => _searchAstrologersList;
  set searchAstrologersList(List<AstrologerData> v) =>
      _searchAstrologersList.assignAll(v);

  final RxBool _isSearchEnable = false.obs;
  bool get isSearchEnable => _isSearchEnable.value;
  set isSearchEnable(bool v) => _isSearchEnable.value = v;

  final searchController = TextEditingController();

  @override
  void onReady() {
    super.onReady();

    getAstrologers();

    searchController.addListener(() {
      if (searchController.text.isEmpty) {
        searchAstrologersList.clear();
      } else {
        searchAstrologersList = astrologersList
            .where(
              (e) =>
                  e.firstName != null &&
                  e.firstName!.toLowerCase().startsWith(
                        searchController.text.toLowerCase().trim(),
                      ),
            )
            .toList();
      }

      update();
    });
  }

  @override
  void onClose() {
    super.onClose();

    searchController
      ..removeListener(() {})
      ..dispose();
  }

  void getAstrologers() {
    if (astrologersList.isEmpty) {
      _apiHelper.getAstrologers().futureValue(
        (value) {
          astrologersList = value.data ?? [];
        },
        retryFunction: getAstrologers,
      );
    }
  }

  void onSearchTap() {
    isSearchEnable = !isSearchEnable;
    searchAstrologersList.clear();
    searchController.clear();
  }

  void onFilterTap() {}

  void onSortTap() {}

  void onCallTap() {}
}
