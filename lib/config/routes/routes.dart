import 'package:flutter/material.dart';
import '../../screens/settings/edit_theme_page.dart';
import '../../screens/todo/add_todo_page.dart';
import '../../screens/todo/todo_main_page.dart';
import '../../screens/todo/update_todo_page.dart';

final String initialRoute = '/';

final Map<String, Widget Function(BuildContext)> routes = {
  TodoMainPage.routePath: (_) => const TodoMainPage(),
  AddTodoPage.routePath: (_) => const AddTodoPage(),
  UpdateTodoPage.routePath: (_) => const UpdateTodoPage(),
  EditThemePage.routePath: (_) => const EditThemePage(),
};
