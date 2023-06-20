import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  final everMessage = ''.obs;
  final onceMessage = ''.obs;
  late Worker onceWorker, everWorker, debounceWorker, intervalWorker;
  late TextEditingController inputController;
  final inputText = ''.obs;
  final RxList<String> debounceKeywordList = RxList();
  final RxList<String> intervalKeywordList = RxList();
  @override
  void onInit() {
    onceWorker = once<int>(count,
        (value) => onceMessage.value = 'Once - Just update count to $value');
    everWorker = ever<int>(count,
        (value) => everMessage.value = 'Ever - Just update count to $value',
        condition: () => count % 2 == 0);
    debounceWorker =
        debounce<String>(inputText, (value) => debounceKeywordList.add(value), time: Duration(seconds: 2));
    intervalWorker =
        interval<String>(inputText, (value) => intervalKeywordList.add(value), time: Duration(seconds: 2));
    inputController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    onceWorker.dispose();
    everWorker.dispose();
    debounceWorker.dispose();
    intervalWorker.dispose();
    inputController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
  void decrease() => count.value--;
  void updateText() {
    inputText.value = inputController.text;
  }
}
