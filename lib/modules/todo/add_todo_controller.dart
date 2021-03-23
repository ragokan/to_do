import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTodoController extends GetxController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  void addTodo() {
    if (titleController.text.isEmpty || descriptionController.text.isEmpty) {
      print('empty');
    }
    // Get.showSnackbar(GetBar(
    //   message: 'Hey',
    //   isDismissible: true,
    //   duration: Duration(seconds: 5),
    //   icon: Icon(
    //     Icons.error,
    //     color: Colors.white,
    //   ),
    // ));
  }
}

AddTodoController addTodoController = AddTodoController();
