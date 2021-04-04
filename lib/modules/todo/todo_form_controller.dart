import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:okito/okito.dart';

import '../../models/todo/todo_model.dart';
import 'todo_controller.dart';

enum FormType { ADD, UPDATE }

class TodoFormController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final FormType formType;
  late String formText;
  int? todoId;

  TodoFormController({
    required this.formType,
    this.todoId,
  }) {
    formText = formType == FormType.ADD ? 'add' : 'update';
  }

  TodoFormController.updateForm({
    this.formType = FormType.UPDATE,
    required this.todoId,
    required String titleValue,
    required String descriptionValue,
  }) {
    titleController.text = titleValue;
    descriptionController.text = descriptionValue;
    formText = formType == FormType.ADD ? 'add' : 'update';
  }

  void submitForm() {
    if (titleController.text.isEmpty || descriptionController.text.isEmpty) {
      Okito.showSnackBar(
          snackBar: SnackBar(
        content:
            Text('Please provide title and description to $formText to_do!'),
      ));
    } else {
      if (formType == FormType.ADD) {
        final todo = Todo(
            id: todoController.todos.length,
            title: titleController.text,
            description: descriptionController.text);
        todoController.todos.insert(0, todo);
        todoController.update();
      } else {
        var todo =
            todoController.todos.firstWhere((element) => element.id == todoId);
        todo.title = titleController.text;
        todo.description = descriptionController.text;
        todoController.update();
      }

      Okito.pop();
    }
  }
}
