import 'package:get/get.dart';

class HomeController extends GetxController{
  late String userName;
  late String password;

  @override
  void onInit() {
    userName = Get.arguments['userName'];
    password = Get.arguments['password'];
    // userName = Get.parameters['userName'] ?? '';
    // password = Get.parameters['password'] ?? '';
    super.onInit();
  }
}