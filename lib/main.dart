import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/config/routes/routes.dart';
import 'package:to_do/constants/main.dart';
import 'package:to_do/modules/todo/todo_controller.dart';

void main() {
  Get.put(todoController);
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: kAppTitle,
      initialRoute: initialRoute,
      getPages: routes,
      theme: ThemeData(primaryColor: Colors.red),
      debugShowCheckedModeBanner: false,
    );
  }
}
