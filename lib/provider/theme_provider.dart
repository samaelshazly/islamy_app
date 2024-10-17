import 'package:flutter/material.dart';

class ThemeManeger with ChangeNotifier {
  changeThemeMode(ThemeMode themeMode) {
    appThemeMode = themeMode;
    notifyListeners();
  }
   changeAppLocal(String locale) {
    localCode=locale;
    notifyListeners();
  }


  bool get isDark => appThemeMode == ThemeMode.dark;
  String localCode = 'en';
  ThemeMode appThemeMode = ThemeMode.dark;
}
