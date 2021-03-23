import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/screens/todo/add_todo_page.dart';
import 'package:to_do/widgets/custom_scaffold.dart';
import 'package:to_do/widgets/todo/todo_builder.dart';
import 'package:to_do/widgets/todo/todo_item.dart';

class TodoMainPage extends StatelessWidget {
  static const String routePath = '/';
  const TodoMainPage({Key? key}) : super(key: key);

  @override
  Widget build(_) => CustomScaffold(
        action: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: IconButton(
            onPressed: () => Get.toNamed(AddTodoPage.routePath),
            tooltip: 'Add to_do',
            icon: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(7.5),
          child: TodoBuilder(
            builder: (todoController) => ListView.builder(
              itemCount: todoController.todos.length,
              itemBuilder: (_, index) => TodoItem(
                id: todoController.todos[index].id,
                key: ValueKey(todoController.todos[index].id),
              ),
            ),
          ),
        ),
      );
}
