import 'package:flutter/material.dart';
import 'package:okito/okito.dart';

import '../../modules/todo/todo_controller.dart';
import '../../modules/todo/todo_form_controller.dart';
import '../../widgets/todo/todo_form.dart';

class UpdateTodoPage extends StatelessWidget {
  static const String routePath = '/updateTodo/:id';
  const UpdateTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoId = int.parse(Okito.arguments['id'] as String);
    final todo =
        todoController.todos.firstWhere((element) => element.id == todoId);
    var todoFormController = TodoFormController.updateForm(
        todoId: todoId,
        titleValue: todo.title,
        descriptionValue: todo.description);
    return TodoForm(todoFormController, context);
  }
}
