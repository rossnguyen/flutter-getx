import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/app_pages.dart';

import 'app_by_provider/home_view_apply_provider.dart';


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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

class ProviderApp extends StatelessWidget {
  const ProviderApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX state management demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeViewApplyProvider(),
    );
  }
}
