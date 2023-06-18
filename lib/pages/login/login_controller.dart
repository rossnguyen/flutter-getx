import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class LoginController extends GetxController{
  late TextEditingController userNameController, passwordController;

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

  void loginByArguments() async{
    final callBackData = await Get.toNamed(Routes.HOME, arguments: {
      'userName': userNameController.text,
      'password': passwordController.text
    });
    print('Callback - Arguments -> $callBackData');
  }

  void loginByParameters() async{
    final callBackData = await Get.toNamed(Routes.HOME, parameters: {
      'userName': userNameController.text,
      'password': passwordController.text
    });
    print('Callback - Parameters  -> $callBackData');
  }

  // void loginByParameters1() async{
  //   final callBackData = await Get.toNamed('/home/${userNameController.text}');
  //   print('Callback - Parameters1  -> $callBackData');
  // }
}
