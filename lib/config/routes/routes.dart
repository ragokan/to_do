import 'package:get/get_navigation/get_navigation.dart';
import '../../screens/todo/add_todo_page.dart';
import '../../screens/todo/todo_main_page.dart';
import '../../screens/todo/update_todo_page.dart';

final String initialRoute = '/';

final List<GetPage> routes = [
  GetPage(
    name: TodoMainPage.routePath,
    page: () => const TodoMainPage(),
  ),
  GetPage(
    name: AddTodoPage.routePath,
    page: () => const AddTodoPage(),
  ),
  GetPage(
    name: UpdateTodoPage.routePath,
    page: () => const UpdateTodoPage(),
  ),
];
