import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'config/routes/routes.dart';
import 'constants/main.dart';
import 'modules/theme/theme_controller.dart';
import 'modules/todo/todo_controller.dart';

void main() async {
  await GetStorage.init();
  Get.put(themeController);
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
      debugShowCheckedModeBanner: false,
    );
  }
}
