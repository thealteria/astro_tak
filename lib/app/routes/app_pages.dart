import 'package:get/get.dart';

import 'package:astro_tak/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:astro_tak/app/modules/dashboard/views/dashboard_view.dart';
import 'package:astro_tak/app/modules/home/bindings/home_binding.dart';
import 'package:astro_tak/app/modules/home/views/home_view.dart';
import 'package:astro_tak/app/modules/talk_to_astrolger/bindings/talk_to_astrolger_binding.dart';
import 'package:astro_tak/app/modules/talk_to_astrolger/views/talk_to_astrolger_view.dart';

part 'app_routes.dart';

class AppPages {
  const AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.TALK_TO_ASTROLGER,
      page: () => const TalkToAstrolgerView(),
      binding: TalkToAstrolgerBinding(),
    ),
  ];
}
