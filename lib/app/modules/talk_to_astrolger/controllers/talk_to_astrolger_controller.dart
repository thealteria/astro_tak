import 'package:astro_tak/app/data/api_helper.dart';
import 'package:astro_tak/app/models/astrologer/astrologer_data.dart';
import 'package:get/get.dart';

class TalkToAstrolgerController extends GetxController {
  final ApiHelper _apiHelper = Get.find();

  List<AstrologerData> astrologersList = [];

  @override
  void onReady() {
    super.onReady();

    getAstrologers();
  }

  void getAstrologers() {
    if (astrologersList.isEmpty) {
      _apiHelper.getAstrologers().futureValue(
        (value) {
          astrologersList = value.data ?? [];
          update();
        },
        retryFunction: getAstrologers,
      );
    }
  }
}
