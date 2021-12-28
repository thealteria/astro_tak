import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/talk_to_astrolger_controller.dart';

class TalkToAstrolgerView extends GetView<TalkToAstrolgerController> {
  const TalkToAstrolgerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          Strings.talkToAstrologer,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
