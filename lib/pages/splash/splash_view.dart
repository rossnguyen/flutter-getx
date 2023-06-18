import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/app_pages.dart';

import '../login/login_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Splash View')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const LoginView(),
                  //     ));

                  // Get.to(const LoginView());

                  Get.toNamed(Routes.LOGIN);
                },
                child: const Text('Go to Login'),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                  Get.offNamed(Routes.LOGIN);
                },
                child: const Text('Off and go to Login'),
              ),
            ],
          ),
        ));
  }
}
