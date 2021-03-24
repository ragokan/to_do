import 'package:flutter/material.dart';
import '../../modules/theme/theme_controller.dart';

ThemeData theme() {
  final brightness =
      themeController.isDarkMode ? Brightness.dark : Brightness.light;
  final color = themeController.selectedColor;
  return ThemeData(
    primaryColor: color,
    accentColor: color,
    brightness: brightness,
    textTheme: ThemeData.fallback().textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
  );
}
