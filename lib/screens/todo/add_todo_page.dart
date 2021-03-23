import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/modules/todo/add_todo_controller.dart';
import 'package:to_do/widgets/custom_scaffold.dart';

class AddTodoPage extends StatelessWidget {
  static const String routePath = '/addTodo';
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(_) => CustomScaffold(
        child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'to_do title'),
                  controller: addTodoController.titleController,
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(labelText: 'to_do description'),
                  controller: addTodoController.descriptionController,
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: addTodoController.addTodo,
                  style: ElevatedButton.styleFrom(
                    primary: Get.theme!.primaryColor,
                    elevation: 3,
                  ),
                  child: Text(
                    'Add to_do',
                  ),
                ),
              ],
            )),
      );
}
