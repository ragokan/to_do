import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/todo/todo_controller.dart';
import '../../modules/todo/todo_form_controller.dart';
import '../../widgets/todo/todo_form.dart';

class UpdateTodoPage extends StatelessWidget {
  static const String routePath = '/updateTodo/:id';
  const UpdateTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(_) {
    final todoId = int.parse(Get.parameters['id']!);
    final todo =
        todoController.todos.firstWhere((element) => element.id == todoId);
    var todoFormController = TodoFormController.updateForm(
        todoId: todoId,
        titleValue: todo.title,
        descriptionValue: todo.description);
    return TodoForm(todoFormController);
  }
}
