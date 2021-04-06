import 'package:flutter/material.dart';
import 'package:okito/okito.dart';
import '../config/theme/theme.dart';

typedef VoidFunction = void Function();

Widget CustomListTile({
  required VoidFunction onTap,
  required IconData icon,
  required String title,
}) =>
    Card(
      color: Okito.use<ThemeProvider>().color,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ListTile(
        leading: Icon(icon, size: 22, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 21, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        onTap: onTap,
      ),
    );
