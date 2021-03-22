import 'package:get/get.dart';
import 'package:to_do/models/todo/todo_model.dart';

typedef SetCallback = void Function();

class TodoController extends GetxController {
  List<Todo> todos = [
    Todo(id: 0, title: 'First', description: 'Hoppala Hey'),
    Todo(id: 1, title: 'Second', description: 'Hey hopp'),
  ];

  void setTodos(SetCallback? setCallback) {
    setCallback!();
    update();
  }
}

TodoController todoController = TodoController();
