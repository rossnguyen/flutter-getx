import 'package:get/get.dart';
import 'package:getx_demo/model/user_info.dart';

class HomeController extends GetxController with StateMixin<List<UserInfo>> {
  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }
  void loadDataWithError() async {
    change(null, status: RxStatus.loading());
    Future.delayed(Duration(seconds: 3),
        () => change(null, status: RxStatus.error('Request timeout')));
  }

  void loadDataWithEmpty() async {
    change(null, status: RxStatus.loading());
    Future.delayed(Duration(seconds: 3),
        () => change(null, status: RxStatus.empty()));
  }

  void loadDataHaveResult() async {
    change(null, status: RxStatus.loading());
    Future.delayed(
        Duration(seconds: 3),
        () => change([
              UserInfo(name: 'Phuc dep trai', old: 29, isMale: true),
              UserInfo(name: 'Nghi hong ngu', old: 21, isMale: true),
              UserInfo(name: 'Bao moi ngu day', old: 28, isMale: true),
            ], status: RxStatus.success()));
  }
}
