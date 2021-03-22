import 'package:get/get.dart';
import 'package:to_do/models/todo/todo_model.dart';

class TodoController extends GetxController {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  set todos(List<Todo> todos) {
    _todos = todos;
    update();
  }
}

TodoController todoController = TodoController();
