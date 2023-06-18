import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigator.pop(context);
              Get.back();
            },
            child: const Text('Back to Login'),
          ),
        ));
  }
}
