import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:okito/okito.dart';
import '../../config/theme/theme.dart';

import '../../widgets/custom_scaffold.dart';

class EditThemePage extends StatelessWidget {
  static const String routePath = '/editTheme';
  const EditThemePage({Key? key}) : super(key: key);

  final List<Color> colors = const <MaterialColor>[
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.cyan,
    Colors.orange,
    Colors.indigo,
  ];

  @override
  Widget build(BuildContext context) {
    return Rockito<AppController>(
      (_) => CustomScaffold(
        title: 'cool to_do colors!',
        child: ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: colors.length,
          itemBuilder: (_, i) {
            var todoTheme = Okito.use<ThemeProvider>();
            return Card(
              elevation: 1.5,
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: InkWell(
                splashColor: colors[i],
                onTap: () {
                  todoTheme.color = colors[i] as MaterialColor;
                  Okito.app.setThemeData(todoTheme.theme);
                },
                child: Ink(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[i],
                      child: todoTheme.color == colors[i]
                          ? const Icon(
                              Icons.assignment_turned_in_rounded,
                              color: Colors.white,
                            )
                          : null,
                    ),
                    title: Text(
                      'Select This Color',
                      style: TextStyle(
                          color: colors[i], fontWeight: FontWeight.bold),
                    ),
                    trailing: todoTheme.color == colors[i]
                        ? Text(
                            'Great Choice!',
                            style: TextStyle(
                                color: colors[i], fontWeight: FontWeight.bold),
                          )
                        : null,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
