import 'package:flutter/material.dart';

class ThemeManeger with ChangeNotifier {
  changeThemeMode(ThemeMode themeMode) {
    appThemeMode = themeMode;
    notifyListeners();
  }

  bool get isDark => appThemeMode == ThemeMode.dark;
  ThemeMode appThemeMode = ThemeMode.dark;
}
