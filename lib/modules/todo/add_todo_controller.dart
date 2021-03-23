import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/models/todo/todo_model.dart';
import 'package:to_do/modules/todo/todo_controller.dart';

class AddTodoController extends GetxController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  void addTodo() {
    if (titleController.text.isEmpty || descriptionController.text.isEmpty) {
      Get.showSnackbar(GetBar(
        message: 'Please provide title and description to add to_do!',
        isDismissible: true,
        duration: Duration(seconds: 5),
        icon: Icon(
          Icons.error,
          color: Colors.white,
        ),
      ));
    } else {
      final todo = Todo(
          id: todoController.todos.length,
          title: titleController.text,
          description: descriptionController.text);
      todoController.setTodos(() => todoController.todos.insert(0, todo));
      Get.back();
    }
  }
}

AddTodoController addTodoController = AddTodoController();
