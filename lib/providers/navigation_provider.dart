import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int _index = 0;
  int get getIndex => _index;

  index(int i) {
    _index = i;
    notifyListeners();
  }
}
