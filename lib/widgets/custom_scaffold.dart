import 'package:flutter/material.dart';
import 'package:okito/okito.dart';

import '../constants/main.dart';

Widget CustomScaffold(
        {String title = kAppTitle,
        required Widget child,
        FloatingActionButton? floatingActionButton,
        Widget? action,
        TabBar? tabbar,
        Drawer? drawer}) =>
    Scaffold(
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
    );
