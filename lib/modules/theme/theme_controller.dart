import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/theme/theme.dart';
import '../../utils/box.dart';

typedef SetCallback = void Function();

class ThemeController extends GetxController {
  final List<Color> colors = <Color>[
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.cyan,
    Colors.orange,
    Colors.indigo,
  ];

  Color selectedColor = Colors.blue;
  bool isDarkMode = false;

  void setColor(int index) {
    selectedColor = colors[index];
    box.write('color', index);
    setTheme();
    update();
  }

  void setTheme({bool? isDark}) {
    isDarkMode = isDark ?? isDarkMode;
    box.write('isDark', isDarkMode);

    Get.changeTheme(theme());
    update();
  }

  void getColorTheme() {
    var colorIndex = box.read<int>('color');
    if (colorIndex == null) return;

    selectedColor = colors[colorIndex];
    update();
  }

  void getMode() {
    var isDark = box.read<bool>('isDark');
    isDarkMode = isDark ?? false;
  }

  @override
  void onInit() {
    super.onInit();
    getMode();
    getColorTheme();
    setTheme();
  }
}

ThemeController themeController = ThemeController();
