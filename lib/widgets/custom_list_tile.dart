import 'package:flutter/material.dart';

typedef VoidFunction = void Function();

Widget CustomListTile({
  required VoidFunction onTap,
  required IconData icon,
  required String title,
}) =>
    Card(
      color: Colors.blue,
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
