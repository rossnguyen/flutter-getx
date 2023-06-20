import 'dart:math';

import 'package:get/get.dart';
import 'package:getx_demo/pages/home/model/customer_info.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  final RxInt count1 = 0.obs;
  final Rx<int> count2 = 0.obs;
  final RxnInt count3 = RxnInt();
  final Rx<CustomerInfo> customerInfo =
      CustomerInfo(name: 'Phuc', old: 29, isMale: true).obs;
  final RxList<CustomerInfo> listUser = RxList();
  final nameList = ['Phục', 'Nghị', 'Bảo', 'Hiếu', 'Huy'];
  void increment() => count.value++;

  void updateName() {
    customerInfo.value.name = 'Phuc dep trai';
    // customerInfo.update((val) {
    //   val?.name = 'Phuc dep trai';
    // });
    // customerInfo(CustomerInfo(name: "Phuc dep trai", old: 29, isMale: true));
  }

  void replaceCustomer() {
    customerInfo.value = CustomerInfo(
        name: nameList[Random().nextInt(5)],
        old: Random().nextInt(24),
        isMale: Random().nextBool());
  }

  void addMoreCustomer() {
    listUser.add(CustomerInfo(
        name: nameList[Random().nextInt(5)],
        old: Random().nextInt(24),
        isMale: Random().nextBool()));
  }

  void removeCustomer() {
    listUser.removeLast();
  }

  void refreshListAndAdSingle() {
    listUser.assign(CustomerInfo(name: 'Phuc đẹp trai', old: 29, isMale: true));
  }

  void replaceListWithNewList() {
    listUser.assignAll([
      CustomerInfo(name: 'Nghị Hông Ngu', old: 24, isMale: true),
      CustomerInfo(name: 'Bảo Hông Ngu', old: 8, isMale: true),
      CustomerInfo(name: 'Phục cũng Hông Ngu', old: 29, isMale: true),
    ]);
  }
}
