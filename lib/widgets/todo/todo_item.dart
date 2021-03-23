import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:to_do/modules/todo/todo_controller.dart';
import 'package:to_do/widgets/todo/delete_todo_diagloue.dart';

class TodoItem extends StatelessWidget {
  final int id;
  const TodoItem({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(_) {
    var todo = todoController.todos.firstWhere((element) => element.id == id);
    final themeData = Get.theme!;
    final color = todo.isCompleted ? Colors.grey : themeData.primaryColor;

    return Card(
      color: color,
      elevation: 3,
      margin: EdgeInsets.only(bottom: 10),
      child: Dismissible(
        direction: DismissDirection.startToEnd,
        onDismissed: (_) =>
            todoController.setTodos(() => todo.isCompleted = !todo.isCompleted),
        background: Card(
          elevation: 0,
          color: color,
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              todo.isCompleted ? 'Make Active' : 'Complete',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
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
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            todo.description,
            style: TextStyle(color: Colors.white),
          ),
          trailing: FittedBox(
            child: Row(
              children: [
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                  tooltip: 'Edit',
                ),
                SizedBox(width: 5),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.delete),
                  onPressed: () => Get.dialog(DeleteTodoDialogue(id: id)),
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
