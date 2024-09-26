import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  var data = 0;
  void add() {
    data++;
    notifyListeners();
  }

  void sub() {
    data--;
    notifyListeners();
  }
}
