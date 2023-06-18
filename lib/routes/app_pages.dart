import 'package:get/get.dart';
import 'package:getx_demo/auth_middle_ware.dart';
import 'package:getx_demo/pages/dashboard/dashboard_view.dart';
import 'package:getx_demo/pages/login/login_view.dart';
import 'package:getx_demo/pages/home/home_view.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      // binding: HomeBinding(),
      middlewares: [AuthMiddleWare()]
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () =>  const LoginView(),
      // binding: LookupBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      // binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashBoardView(),
      // binding: SplashBinding(),
    ),
  ];
}