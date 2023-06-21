import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo/pages/login/controllers/login_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Profile View'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text('Username: ${Get.find<LoginController>().userName.value}'),
          SizedBox(
            height: 8,
          ),
          Text('Password: ${Get.find<LoginController>().password.value}'),
        ]),
      ),
    );
  }
}
