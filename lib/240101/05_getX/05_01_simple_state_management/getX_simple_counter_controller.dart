import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count++;
    update(); // simple type state management - should update() manually
  }

  void decrement() {
    count--;
    update();
  }
}
