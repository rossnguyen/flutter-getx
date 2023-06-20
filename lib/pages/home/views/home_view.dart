import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
          Obx(() => Text(controller.count.toString())),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: controller.increment,
              child: const Text('Increase')),
        ]),
      ),
    );
  }
}
