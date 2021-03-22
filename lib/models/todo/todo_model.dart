import 'package:to_do/modules/todo/todo_controller.dart';

class Todo {
  final int id;
  String title;
  String description;
  bool isCompleted;

  Todo({
    required this.id,
    required this.title,
    required this.description,
    this.isCompleted = false,
  });
}
