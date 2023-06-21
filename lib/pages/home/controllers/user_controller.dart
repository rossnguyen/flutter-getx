import 'package:get/get.dart';

class UserController{
  final name = 'phuc'.obs;
  final age = '29'.obs;

  void updateName(String value){
    name.value = value;
  }
}