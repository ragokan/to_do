import 'package:flutter/material.dart';
import 'package:okito/okito.dart';

import '../../screens/todo/add_todo_page.dart';

class ScaffoldAddTodoAction extends StatelessWidget {
  const ScaffoldAddTodoAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: IconButton(
        onPressed: () => Okito.pushNamed(AddTodoPage.routePath),
        tooltip: 'Add to_do',
        icon: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
