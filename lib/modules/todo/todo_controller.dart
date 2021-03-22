import 'package:get/get.dart';
import 'package:to_do/models/todo/todo_model.dart';

typedef SetCallback = void Function();

class TodoController extends GetxController {
  List<Todo> _todos = [
    Todo(id: 0, title: 'First', description: 'Hoppala canım'),
    Todo(id: 1, title: 'Second', description: 'Hoppala hopp'),
  ];

  List<Todo> get todos => _todos;

  set todos(List<Todo> todos) {
    _todos = todos;
    update();
  }

  void setTodos(SetCallback? setCallback) {
    setCallback!();
    update();
  }
}

TodoController todoController = TodoController();
