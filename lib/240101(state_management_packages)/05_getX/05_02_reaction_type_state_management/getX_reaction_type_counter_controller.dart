import 'package:get/get.dart';

class User {
  String name = '';
  int age = 0;
}

class CounterController extends GetxController {
  // same with 1. var count = RxInt(0);
  //           2. var count = Rx<int>(0);
  // available opt : RxInt, RxBool, RxString, RxDouble, RxList, RxMap, RxSet
  //               : Rx<custom class>(Custom Class())
  var count = 0.obs;
  var isChecked = false.obs;
  var title = ''.obs;
  var user = User().obs;

  @override
  void onInit() {
    // State Management by GetX "Worker"
    super.onInit();
    ever(
      // invoke the state whenever state changed
      count,
      (value) => print('ever : $value'),
    );
    once(
      // invoke the state one time only when state changed
      count,
      (value) => print('once : $value'),
    );
    debounce(
      // invokes the state after a set amount of time has passed
      count,
      (value) => print('debounce: ${value}'),
      time: const Duration(seconds: 1),
    );
    interval(
      // invokes the state after the interval time has passed between the state changes
      count,
      (value) => print('interval : $value'),
      time: const Duration(seconds: 1),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
