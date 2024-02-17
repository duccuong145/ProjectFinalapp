import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;

    notifyListeners();
  }

  Color get textColor => _isDarkMode ? Colors.white : Colors.black;
}
