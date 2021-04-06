import 'package:flutter/material.dart';
import 'package:okito/okito.dart';

class ThemeProvider {
  Brightness brightness = Brightness.light;
  MaterialColor color = Colors.blue;
  bool isDarkMode = false;
  void setTheme({required bool isDark}) {
    brightness = isDark ? Brightness.dark : Brightness.light;
    Okito.app.setThemeData(theme);
    isDarkMode = isDark;
  }

  ThemeData get theme => ThemeData(
        primaryColor: color,
        primarySwatch: color,
        accentColor: color,
        brightness: brightness,
        textTheme: ThemeData.fallback().textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      );
}
