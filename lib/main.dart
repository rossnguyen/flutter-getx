import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/app_pages.dart';
import 'package:getx_demo/service/connectivity_service.dart';



void main() {
  runApp(const GetXApp());
  // runApp(const ProviderApp());
}

class GetXApp extends StatelessWidget {
  const GetXApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX state management demo',
      initialBinding: BindingsBuilder(() {
        Get.put(ConnectivityService());
      }),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
