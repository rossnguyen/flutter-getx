import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  void increment() => count.value++;
  void decrease() => count.value--;
  late String userName;
  late String password;

  @override
  void onInit() {
    userName = Get.arguments['userName'];
    password = Get.arguments['password'];
    super.onInit();
  }

  void goToProfile() {
    Get.toNamed(Routes.PROFILE);
  }
}
