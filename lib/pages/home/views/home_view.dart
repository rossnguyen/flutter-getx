import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo/pages/login/controllers/login_controller.dart';
import 'package:getx_demo/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text('Username: ${controller.userName}'),
          SizedBox(
            height: 8,
          ),
          Text('Password: ${controller.password}'),
          SizedBox(height: 8,),
          ElevatedButton(onPressed: controller.goToProfile, child: Text('Go To Profile'))
        ]),
      ),
    );
  }
}
