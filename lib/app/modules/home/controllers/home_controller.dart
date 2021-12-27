import 'package:astro_tak/app/data/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ApiHelper _apiHelper = Get.find();

  final RxList _dataList = RxList();
  List<dynamic> get dataList => _dataList;
  set dataList(List<dynamic> dataList) => _dataList.addAll(dataList);

  @override
  void onReady() {
    super.onReady();

    getPosts();
  }

  void getPosts() {
    _apiHelper.getPosts().futureValue(
          (value) => dataList = value,
          retryFunction: getPosts,
        );
  }
}
