import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/app_pages.dart';

class LoginController extends GetxController {
  late TextEditingController userNameController, passwordController;
  final userName = ''.obs;
  final password = ''.obs;

  @override
  void onInit() {
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void goHome() {
    userName.value = userNameController.text;
    password.value = passwordController.text;
    Get.toNamed(Routes.HOME,
        arguments: {'userName': userName.value, 'password': password.value});
  }
}
