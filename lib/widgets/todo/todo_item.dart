import 'package:flutter/material.dart';
import 'package:to_do/modules/todo/todo_controller.dart';

class TodoItem extends StatelessWidget {
  final int id;
  const TodoItem({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todo = todoController.todos.firstWhere((element) => element.id == id);
    final titleLength = todo.title.length;
    final descriptionLength = todo.description.length;
    return Card(
      color: Colors.blue,
      elevation: 7,
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text((todo.id + 1).toString()),
        ),
        title: Text(
          '''
${todo.title.substring(0, titleLength < 10 ? titleLength : 10)}${titleLength > 10 ? '...' : ''}''',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          '''
${todo.description.substring(0, descriptionLength < 20 ? descriptionLength : 20)}${descriptionLength > 20 ? '...' : ''}''',
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
                onPressed: () {},
                tooltip: 'Delete',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
