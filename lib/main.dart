import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';
import 'package:getx_demo/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
    );
  }
}
