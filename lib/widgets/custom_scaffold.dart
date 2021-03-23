import 'package:flutter/material.dart';
import 'package:to_do/constants/main.dart';

Widget CustomScaffold({
  String title = kAppTitle,
  required Widget child,
  FloatingActionButton? floatingActionButton,
  Widget? action,
  TabBar? tabbar,
}) =>
    Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: action != null ? [action] : null,
        bottom: tabbar,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 1200,
          ),
          child: child,
        ),
      ),
      floatingActionButton: floatingActionButton,
    );
