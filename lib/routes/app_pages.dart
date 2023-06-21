import 'package:get/get.dart';
import 'package:getx_demo/pages/login/bindings/login_binding.dart';
import 'package:getx_demo/pages/login/views/login_view.dart';

import '../pages/home/bindings/home_binding.dart';
import '../pages/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () =>  const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      // binding: HomeBinding(),
    ),
  ];
}