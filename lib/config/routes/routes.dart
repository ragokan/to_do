import 'package:get/get_navigation/get_navigation.dart';
import 'package:to_do/screens/todo/todo_main_page.dart';

final String initialRoute = '/';

final List<GetPage> routes = [
  GetPage(
    name: TodoMainPage.routePath,
    page: () => TodoMainPage(),
  ),
];
