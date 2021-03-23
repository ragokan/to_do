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
    final titleLength = todo.title.length;
    final descriptionLength = todo.description.length;
    final todoTitle =
        todo.title.substring(0, titleLength < 12 ? titleLength : 12);
    final todoDescription = todo.description
        .substring(0, descriptionLength < 17 ? descriptionLength : 17);
    return Card(
      color: todo.isCompleted ? Colors.grey : Get.theme!.primaryColor,
      elevation: 3,
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text((todo.id + 1).toString(),
              style: TextStyle(
                  color: Get.theme!.primaryColor, fontWeight: FontWeight.w900)),
        ),
        title: Text(
          '$todoTitle${titleLength > 12 ? '...' : ''}',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          '$todoDescription${descriptionLength > 17 ? '...' : ''}',
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
    );
  }
}
