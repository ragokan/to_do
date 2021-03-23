import 'package:flutter/material.dart';
import 'package:to_do/modules/todo/todo_form_controller.dart';
import 'package:to_do/widgets/todo/todo_form.dart';

class AddTodoPage extends StatelessWidget {
  static const String routePath = '/addTodo';
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(_) {
    var todoFormController = TodoFormController(formType: FormType.ADD);
    return TodoForm(todoFormController);
  }
}
