import 'package:flutter/material.dart';
import 'package:flutter_news_app/services/dark_theme_prefs.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePref darkThemePref = DarkThemePref();
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePref.setDarkTheme(value);
    notifyListeners();
  }
}
