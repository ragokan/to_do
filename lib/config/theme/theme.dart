import 'package:flutter/material.dart';

ThemeData theme() {
  final brightness = Brightness.light;
  final color = Colors.blue;
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
