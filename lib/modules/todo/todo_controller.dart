import 'package:get/get.dart';
import 'package:to_do/models/todo/todo_model.dart';

typedef SetCallback = void Function();

class TodoController extends GetxController {
  TodoController() {
    todos.add(
      Todo(
        id: 0,
        title: 'To complete this, swipe it to right.',
        description: 'To delete, press the trash icon.',
        // isCompleted: Random().nextBool(),
      ),
    );
  }

  List<Todo> todos = [];

  void setTodos(SetCallback? setCallback) {
    setCallback!();
    update();
  }
}

TodoController todoController = TodoController();
