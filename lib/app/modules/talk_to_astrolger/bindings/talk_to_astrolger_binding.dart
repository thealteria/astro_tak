import 'package:get/get.dart';

import '../controllers/talk_to_astrolger_controller.dart';

class TalkToAstrolgerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TalkToAstrolgerController>(
      () => TalkToAstrolgerController(),
    );
  }
}
