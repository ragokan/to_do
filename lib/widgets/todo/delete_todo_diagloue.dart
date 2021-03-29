import 'package:flutter/material.dart';
import 'package:okito/okito.dart';

import '../../modules/todo/todo_controller.dart';

class DeleteTodoDialogue extends StatelessWidget {
  const DeleteTodoDialogue({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    final themeData = Okito.of(context).theme;
    return AlertDialog(
      content: const Text('Are you sure to delete?'),
      actions: [
        TextButton(
          onPressed: Okito.of(context).pop,
          child: Text(
            'Cancel',
            style: TextStyle(color: themeData.primaryColor),
          ),
        ),
        TextButton(
          onPressed: () {
            todoController.setTodos(() => todoController.todos
                .removeWhere((element) => element.id == id));
            Okito.of(context).pop();
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
