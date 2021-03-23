import 'dart:math';

import 'package:get/get.dart';
import 'package:to_do/models/todo/todo_model.dart';
import 'package:faker/faker.dart';

typedef SetCallback = void Function();

Faker faker = Faker();

class TodoController extends GetxController {
  TodoController() {
    for (var i = 0; i < 30; i++) {
      todos.add(
        Todo(
          id: i,
          title: faker.lorem.words(2).join(' '),
          description: faker.lorem.sentence(),
          isCompleted: Random().nextBool(),
        ),
      );
    }
  }

  List<Todo> todos = [];

  void setTodos(SetCallback? setCallback) {
    setCallback!();
    update();
  }
}

TodoController todoController = TodoController();
