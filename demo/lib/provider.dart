import 'package:flutter/material.dart';

class ToggleModel extends ChangeNotifier {
  Color color = Colors.white;
  toggle() {
    color = color == Colors.white ? Colors.black : Colors.white;
    notifyListeners();
  }
}
