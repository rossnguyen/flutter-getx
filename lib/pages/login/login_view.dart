import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/login/login_controller.dart';
import 'package:getx_demo/routes/app_pages.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                      controller: controller.userNameController,
                      decoration: const InputDecoration(hintText: 'Input User Name')),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: controller.passwordController,
                    decoration: const InputDecoration(hintText: 'Input Password')
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(onPressed: controller.loginByArguments, child: const Text('Send by arguments')),
                  // const SizedBox(height: 16),
                  // ElevatedButton(onPressed: controller.loginByParameters, child: const Text('Send by parameters'))
                ],
              ),
            ),
          ),
        ));
  }
}
