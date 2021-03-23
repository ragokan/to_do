import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:to_do/modules/todo/todo_controller.dart';
import 'package:to_do/widgets/todo/delete_todo_diagloue.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoItem extends StatelessWidget {
  final int id;
  const TodoItem({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(_) {
    var todo = todoController.todos.firstWhere((element) => element.id == id);
    final themeData = Get.theme!;
    final actions = todo.isCompleted
        ? [
            IconSlideAction(
              caption: 'Un-complete',
              icon: Icons.arrow_back_sharp,
              color: Colors.red,
              onTap: () => todoController
                  .setTodos(() => todo.isCompleted = !todo.isCompleted),
            )
          ]
        : [
            IconSlideAction(
              caption: 'Complete',
              icon: Icons.done,
              color: Colors.green,
              onTap: () => todoController
                  .setTodos(() => todo.isCompleted = !todo.isCompleted),
            )
          ];
    return Card(
      color: todo.isCompleted ? Colors.grey : themeData.primaryColor,
      elevation: 3,
      margin: EdgeInsets.only(bottom: 10),
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        actions: actions,
        secondaryActions: actions,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text((todo.id + 1).toString(),
                style: TextStyle(
                    color: themeData.primaryColor,
                    fontWeight: FontWeight.w900)),
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
