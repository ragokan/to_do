import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/modules/todo/todo_controller.dart';

typedef BuilderCallback = Widget Function(TodoController todoController);
typedef TodoFilter = Object Function(TodoController);

GetBuilder TodoBuilder({
  required BuilderCallback builder,
  TodoFilter? todoFilter,
}) =>
    GetBuilder<TodoController>(
      filter: todoFilter,
      builder: (todoController) => builder(todoController),
    );
