import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Splash View')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ));
              // Get.to(const LoginView());
            },
            child: const Text('Go to Login'),
          ),
        ));
  }
}
