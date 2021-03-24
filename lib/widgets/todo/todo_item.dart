import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../modules/todo/todo_controller.dart';
import '../theme/theme_builder.dart';
import 'delete_todo_diagloue.dart';

class TodoItem extends StatelessWidget {
  final int id;
  const TodoItem({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(_) {
    var todo = todoController.todos.firstWhere((element) => element.id == id);

    return ThemeBuilder(
      builder: (themeController) {
        final color =
            todo.isCompleted ? Colors.grey : themeController.selectedColor;
        return Card(
          color: color,
          elevation: 3,
          margin: const EdgeInsets.only(bottom: 10),
          child: Dismissible(
            direction: DismissDirection.startToEnd,
            onDismissed: (_) => todoController
                .setTodos(() => todo.isCompleted = !todo.isCompleted),
            background: Card(
              elevation: 0,
              color: color,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  todo.isCompleted ? 'Activate Back' : 'Complete',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            key: ValueKey(todo.id),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text((todo.title[0].toUpperCase()).toString(),
                    style:
                        TextStyle(color: color, fontWeight: FontWeight.w900)),
              ),
              title: Text(
                todo.title,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                todo.description,
              ),
              trailing: FittedBox(
                child: Row(
                  children: [
                    IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.edit),
                      onPressed: () => Get.toNamed('/updateTodo/${todo.id}'),
                      tooltip: 'Edit',
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.delete),
                      onPressed: () => Get.dialog(DeleteTodoDialogue(id: id)),
                      tooltip: 'Delete',
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
