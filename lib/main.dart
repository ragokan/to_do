import 'package:flutter/material.dart';
import 'package:okito/okito.dart';
import 'config/routes/routes.dart';
import 'constants/main.dart';

void main() async {
  await OkitoStorage.init();
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OkitoMaterialApp(
      title: kAppTitle,
      initialRoute: initialRoute,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
