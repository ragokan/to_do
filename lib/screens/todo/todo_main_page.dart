import 'package:flutter/material.dart';
import 'package:to_do/widgets/custom_scaffold.dart';

class TodoMainPage extends StatelessWidget {
  static const String routePath = '/';
  const TodoMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CustomScaffold(child: Text('hey'));
}
