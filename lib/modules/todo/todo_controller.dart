import 'dart:convert';
import 'package:get/get.dart';
import '../../models/todo/todo_model.dart';
import '../../utils/box.dart';

typedef SetCallback = void Function();

class TodoController extends GetxController {
  List<Todo> todos = [];

  void setTodos(SetCallback? setCallback) {
    setCallback!();
    update();
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
    saveTodos();
  }

  void saveTodos() {
    final todoMap = todos.map((todo) => todo.toMap()).toList();
    final todoJson = json.encode(todoMap);
    box.write('todos', todoJson);
  }

  void readTodos() {
    final todoJson = box.read<String>('todos');
    if (todoJson != null) {
      final List<dynamic> todoMap = json.decode(todoJson);
      todoMap.forEach((element) => todos.add(Todo.fromMap(element)));
      super.update();
    }
  }

  @override
  void onInit() {
    super.onInit();
    readTodos();

    final isNew = box.read<bool>('new') == null;

    if (isNew) {
      box.writeIfNull('new', false);
      todos.add(Todo(
          id: 0,
          title: 'To complete this, swipe it to right.',
          description: 'To delete, press the trash icon.'));
    }

    saveTodos();
  }
}

TodoController todoController = TodoController();
