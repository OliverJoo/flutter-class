
import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class Sum {
  int _sum = 0;

  int get sum => _sum;

  void set sum(value) {
    _sum = 0;
    for (int i = 1; i <= value; i++) {
      _sum += 1;
    }
  }

  Sum(Counter counter) {
    sum = counter.count;
  }
}
