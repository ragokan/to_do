import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/theme/theme_controller.dart';

typedef BuilderCallback = Widget Function(ThemeController themeController);
typedef ThemeFilter = Object Function(ThemeController);

GetBuilder ThemeBuilder({
  required BuilderCallback builder,
  ThemeFilter? themeFilter,
}) =>
    GetBuilder<ThemeController>(
      filter: themeFilter,
      builder: (themeController) => builder(themeController),
    );
