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

  void setColor(int index) {
    selectedColor = colors[index];
    box.write('color', index);
    setTheme();
  }

  void setTheme() {
    Get.changeTheme(theme(color: selectedColor));
    update();
  }

  @override
  void onInit() {
    super.onInit();
    var colorIndex = box.read<int>('color');
    if (colorIndex == null) return setTheme();

    selectedColor = colors[colorIndex];
    setTheme();
  }
}

ThemeController themeController = ThemeController();
