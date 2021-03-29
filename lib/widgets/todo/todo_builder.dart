import 'package:flutter/material.dart';
import 'package:okito/okito.dart';

import '../../modules/todo/todo_controller.dart';

typedef BuilderCallback = Widget Function(TodoController todoController);

OkitoBuilder TodoBuilder({
  required BuilderCallback builder,
}) =>
    OkitoBuilder(
      controller: todoController,
      builder: () => builder(todoController),
    );
