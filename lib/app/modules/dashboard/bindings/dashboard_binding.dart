import 'package:astro_tak/app/modules/home/controllers/home_controller.dart';
import 'package:astro_tak/app/modules/talk_to_astrolger/controllers/talk_to_astrolger_controller.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<TalkToAstrolgerController>(
      () => TalkToAstrolgerController(),
    );
  }
}
