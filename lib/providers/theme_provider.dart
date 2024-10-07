import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool get isDark => appThemeMode == ThemeMode.dark;
  ThemeMode appThemeMode = ThemeMode.dark;
  String localeCode = 'en';

  void changeThemeMode(ThemeMode themeMode) {
    appThemeMode = themeMode;
    notifyListeners();
  }

  void changeAppLocal(String locale) {
    localeCode = locale;
    notifyListeners();
  }
}
