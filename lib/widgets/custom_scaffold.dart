import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/main.dart';
import '../modules/theme/theme_controller.dart';

Widget CustomScaffold(
        {String title = kAppTitle,
        required Widget child,
        FloatingActionButton? floatingActionButton,
        Widget? action,
        TabBar? tabbar,
        Drawer? drawer}) =>
    GetBuilder<ThemeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: action != null ? [action] : null,
          bottom: tabbar,
        ),
        drawer: drawer,
        body: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 1200,
            ),
            child: child,
          ),
        ),
        floatingActionButton: floatingActionButton,
      ),
    );
