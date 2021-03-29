import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'config/routes/routes.dart';
import 'constants/main.dart';

void main() async {
  await GetStorage.init();
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      initialRoute: initialRoute,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
