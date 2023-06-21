import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(controller: controller.userNameController, decoration: InputDecoration(hintText: 'Enter your user namme'),),
              SizedBox(height: 8,),
              TextFormField(controller: controller.passwordController, decoration: InputDecoration(hintText: 'Enter your password'),),
              ElevatedButton(
                onPressed: controller.goHome,
                child: Text('Go to Home Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
