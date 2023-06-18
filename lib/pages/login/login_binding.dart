import 'package:get/get.dart';
import 'package:getx_demo/pages/login/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }

}