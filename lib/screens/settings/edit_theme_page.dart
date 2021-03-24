import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../modules/theme/theme_controller.dart';
import '../../widgets/custom_scaffold.dart';
import '../../widgets/theme/theme_builder.dart';

class EditThemePage extends StatelessWidget {
  static const String routePath = '/editTheme';
  const EditThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = themeController.colors;

    return CustomScaffold(
      title: 'cool to_do themes!',
      child: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: colors.length,
        itemBuilder: (_, i) => Card(
          elevation: 1.5,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: InkWell(
            splashColor: colors[i],
            onTap: () => themeController.setColor(i),
            child: Ink(
              child: ThemeBuilder(
                builder: (_) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: colors[i],
                    child: themeController.selectedColor == colors[i]
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
                  trailing: themeController.selectedColor == colors[i]
                      ? Text(
                          'Great Choice!',
                          style: TextStyle(
                              color: colors[i], fontWeight: FontWeight.bold),
                        )
                      : null,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
