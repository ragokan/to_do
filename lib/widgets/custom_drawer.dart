import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/settings/edit_theme_page.dart';
import 'custom_list_tile.dart';
import 'theme/theme_builder.dart';

Drawer CustomDrawer() {
  return Drawer(
    child: Column(
      children: [
        ThemeBuilder(
          builder: (themeController) => Container(
            width: double.infinity,
            height: 150,
            color: themeController.selectedColor,
            alignment: Alignment.center,
            child: const Text(
              'to_do',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        CustomListTile(
          onTap: () => Get.toNamed(EditThemePage.routePath),
          icon: Icons.format_paint_sharp,
          title: 'Change Color',
        ),
        ThemeBuilder(
          builder: (themeController) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Light',
                style: TextStyle(
                    color: themeController.selectedColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(width: 5),
              Transform.scale(
                scale: 1.25,
                child: Switch(
                  splashRadius: 20,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: themeController.isDarkMode,
                  activeColor: themeController.selectedColor,
                  onChanged: (value) => themeController.setTheme(isDark: value),
                ),
              ),
              const SizedBox(width: 5),
              Text('Dark',
                  style: TextStyle(
                      color: themeController.selectedColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ],
          ),
        )
      ],
    ),
  );
}
