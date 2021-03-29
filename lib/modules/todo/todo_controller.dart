import 'dart:convert';

import 'package:okito/okito.dart';

import '../../models/todo/todo_model.dart';
import '../../utils/box.dart';

typedef SetCallback = void Function();

class TodoController extends OkitoController {
  List<Todo> todos = [];
  TodoController() {
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

  void setTodos(SetCallback? setCallback) {
    setCallback!();
    update();
  }

  @override
  void update() {
    super.update();
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
}

TodoController todoController = TodoController();
