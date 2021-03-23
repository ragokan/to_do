import 'package:flutter/material.dart';
import 'package:to_do/modules/todo/todo_view_controller.dart';
import 'package:to_do/widgets/custom_scaffold.dart';
import 'package:to_do/widgets/todo/scaffold_add_todo_action.dart';
import 'package:to_do/widgets/todo/todo_builder.dart';
import 'package:to_do/widgets/todo/todo_item.dart';
import 'package:get/get.dart';

class TodoMainPage extends StatelessWidget {
  static const String routePath = '/';
  const TodoMainPage({Key? key}) : super(key: key);

  @override
  Widget build(_) {
    final tabController = Get.put(TodoTabController())!;

    return CustomScaffold(
      action: ScaffoldAddTodoAction(),
      tabbar: TabBar(
        tabs: tabController.tabs,
        controller: tabController.controller,
        indicatorColor: Colors.white,
      ),
      child: Container(
          margin: EdgeInsets.all(7.5),
          child: TodoBuilder(builder: (todoController) {
            final activeTodos = todoController.todos
                .where((element) => !element.isCompleted)
                .toList();
            final completedTodos = todoController.todos
                .where((element) => element.isCompleted)
                .toList();
            return TabBarView(controller: tabController.controller, children: [
              ListView.builder(
                itemCount: activeTodos.length,
                itemBuilder: (_, index) => TodoItem(
                  id: activeTodos[index].id,
                  key: ValueKey(activeTodos[index].id),
                ),
              ),
              ListView.builder(
                itemCount: completedTodos.length,
                itemBuilder: (_, index) => TodoItem(
                  id: completedTodos[index].id,
                  key: ValueKey(completedTodos[index].id),
                ),
              ),
            ]);
          })),
    );
  }
}
