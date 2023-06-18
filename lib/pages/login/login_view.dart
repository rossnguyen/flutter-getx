import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/app_pages.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Get.back();
                },
                child: const Text('Back to Splash'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.HOME);
                },
                child: const Text('Go To Home'),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                  Get.offNamed(Routes.HOME);
                },
                child: const Text('Off and go to Home'),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(Routes.HOME);
                },
                child: const Text('Off all and go to Home'),
              )
            ],
          ),
        ));
  }
}
