import 'package:get/get.dart';
import 'package:getx_demo/pages/setting/setting_view.dart';
import 'package:getx_demo/pages/login/login_view.dart';
import 'package:getx_demo/pages/home/home_view.dart';
import 'package:getx_demo/pages/quotation_summary/quotation_summary_view.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';
import 'package:getx_demo/pages/update_avatar/update_avatar_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      // binding: HomeBinding(),
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
      name: _Paths.SUMMARY,
      page: () => const QuotationSummaryView(),
      // binding: SplashBinding(),
    ),
  
  ];
}