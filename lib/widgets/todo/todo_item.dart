import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:okito/okito.dart';

import '../../modules/todo/todo_controller.dart';
import 'delete_todo_diagloue.dart';

class TodoItem extends StatelessWidget {
  final int id;
  const TodoItem({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todo = todoController.todos.firstWhere((element) => element.id == id);
    final color = todo.isCompleted ? Colors.grey : Colors.blue;

    return Card(
      color: color,
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 10),
      child: Dismissible(
        onDismissed: (_) =>
            todoController.setTodos(() => todo.isCompleted = !todo.isCompleted),
        background: Card(
          elevation: 0,
          color: color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                todo.isCompleted ? 'Activate Back' : 'Complete',
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                todo.isCompleted ? 'Activate Back' : 'Complete',
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
        key: ValueKey(todo.id),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text((todo.title[0].toUpperCase()).toString(),
                style: TextStyle(color: color, fontWeight: FontWeight.w900)),
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
                  onPressed: () => Okito.of(context)
                      .pushNamed(routeName: '/updateTodo/${todo.id}'),
                  tooltip: 'Edit',
                ),
                const SizedBox(width: 5),
                IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.delete),
                  onPressed: () => Okito.of(context)
                      .showDialog(child: DeleteTodoDialogue(id: id)),
                  tooltip: 'Delete',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
