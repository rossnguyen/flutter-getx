import 'package:flutter/cupertino.dart';

class HomeModel extends ChangeNotifier {
  var count = 0;

  void increase() {
    count++;
    notifyListeners();
  }
}
