import 'package:flutter/material.dart';
import 'package:okito/okito.dart';
import '../config/theme/theme.dart';
import '../screens/settings/edit_theme_page.dart';
import 'custom_list_tile.dart';

Drawer CustomDrawer() {
  final themeProvider = Okito.use<ThemeProvider>();
  return Drawer(
    child: Rockito<AppController>(
      (_) => Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: themeProvider.color,
            alignment: Alignment.center,
            child: const Text(
              'to_do',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          CustomListTile(
            onTap: () => Okito.pushNamed(EditThemePage.routePath),
            icon: Icons.format_paint_sharp,
            title: 'Change Color',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Light',
                style: TextStyle(
                    color: themeProvider.color,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(width: 5),
              Transform.scale(
                scale: 1.25,
                child: Switch(
                  splashRadius: 20,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: themeProvider.isDarkMode,
                  activeColor: themeProvider.color,
                  onChanged: (value) => themeProvider.setTheme(isDark: value),
                ),
              ),
              const SizedBox(width: 5),
              Text('Dark',
                  style: TextStyle(
                      color: themeProvider.color,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ],
          ),
        ],
      ),
    ),
  );
}
