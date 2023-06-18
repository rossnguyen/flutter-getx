import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Get.back(result: 'Mới nhấn back nè');
                  },
                  child: const Text('Back to Login'),
                ),
                const SizedBox(height: 8),
                Text('Hello ${controller.userName} - ${controller.password}'),
              ],
            ),
          ),
        ));
  }
}
