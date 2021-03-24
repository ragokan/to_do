import 'package:flutter/material.dart';
import 'theme/theme_builder.dart';

typedef VoidFunction = void Function();

Widget CustomListTile({
  required VoidFunction onTap,
  required IconData icon,
  required String title,
}) =>
    ThemeBuilder(
      builder: (themeController) => Card(
        color: themeController.selectedColor,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: ListTile(
          leading: Icon(icon, size: 25, color: Colors.white),
          title: Text(
            title,
            style: const TextStyle(
                fontSize: 21, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          onTap: onTap,
        ),
      ),
    );
