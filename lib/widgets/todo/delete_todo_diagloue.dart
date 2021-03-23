import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/modules/todo/todo_controller.dart';

class DeleteTodoDialogue extends StatelessWidget {
  const DeleteTodoDialogue({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    final themeData = Get.theme!;
    return AlertDialog(
      content: Text('Are you sure to delete?'),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'Cancel',
            style: TextStyle(color: themeData.primaryColor),
          ),
        ),
        TextButton(
          onPressed: () {
            todoController.setTodos(() => todoController.todos
                .removeWhere((element) => element.id == id));
            Get.back();
          },
          child: Text(
            'Yes',
            style: TextStyle(color: themeData.primaryColor),
          ),
        )
      ],
    );
  }
}
