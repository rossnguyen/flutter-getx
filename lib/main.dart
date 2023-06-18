import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/dashboard/dashboard_view.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';
import 'package:getx_demo/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  bool alreadyShowDashBoard = false;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashView(),
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      routingCallback: (routing) {
        if (routing?.current == Routes.HOME && !alreadyShowDashBoard) {
          SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
            alreadyShowDashBoard = true;
            Get.toNamed(Routes.DASHBOARD);
          });
        }
      },
    );
  }
}
