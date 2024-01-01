import 'package:flutter/material.dart';

class MyDataModel1 with ChangeNotifier {
  int data = 0;

  void changeData() {
    data++;
    notifyListeners();
  }
}

class MyDataModel2 with ChangeNotifier {
  String data = 'hello';

  void changeData() {
    if (data == 'hello') {
      data = 'world';
    } else {
      data = 'hello';
    }
    notifyListeners();
  }
}
