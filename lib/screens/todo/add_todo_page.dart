import 'package:flutter/material.dart';
import '../../modules/todo/todo_form_controller.dart';
import '../../widgets/todo/todo_form.dart';

class AddTodoPage extends StatelessWidget {
  static const String routePath = '/addTodo';
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todoFormController = TodoFormController(formType: FormType.ADD);
    return TodoForm(todoFormController, context);
  }
}
