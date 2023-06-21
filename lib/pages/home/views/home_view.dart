import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo/pages/home/controllers/user_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    // Get.put(UserController());
    // Get.lazyPut(() => UserController());
    // Get.putAsync<SharedPreferences>(() async {
    //   final prefs = await SharedPreferences.getInstance();
    //   await prefs.setInt('counter', 12345);
    //   return prefs;
    // });
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Obx(() => Text(Get.find<HomeController>().count.toString())),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: Get.find<HomeController>().increment,
              child: const Text('Increase')),
          //  const SizedBox(height: 8),
          //  ElevatedButton(
          //     onPressed: (){
          //        Get.find<UserController>().updateName('Phuc đẹp trai');
          //        print(Get.find<UserController>().name);
          //     },
          //     child: const Text('Update Name')),
          //   const SizedBox(height: 8),
          //   Obx(() => Text(Get.find<SharedPreferences>().getInt('counter').toString())),
          //    ElevatedButton(
          //     onPressed: (){
          //       print(
          //           'Counter value from share preferences: ${Get.find<SharedPreferences>().getInt('counter')}');
          //     },
          //     child: const Text('Get data from share preferences')),
        ]),
      ),
    );
  }
}
