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
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        CustomListTile(
          onTap: () => Get.toNamed(EditThemePage.routePath),
          icon: Icons.format_paint_sharp,
          title: 'Change Theme',
        ),
      ],
    ),
  );
}
