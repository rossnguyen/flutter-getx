import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';

import '../../routes/app_pages.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Get.back();
                },
                child: const Text('Back to Login'),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                  Get.offNamedUntil(Routes.SETTING, ModalRoute.withName(Routes.SPLASH));
                },
                child: const Text('Open Setting and off until splash'),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                  // Get.until((route) => Get.currentRoute == Routes.SPLASH);
                  Get.until(ModalRoute.withName(Routes.SPLASH));
                },
                child: const Text('Off all until splash'),
              ),
            ],
          ),
        ));
  }
}
