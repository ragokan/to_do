import 'package:flutter/material.dart';

class TodoTabController extends State<StatefulWidget>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: 'Active'),
    const Tab(text: 'Completed'),
  ];

  late TabController controller;

  void onInit() {
    controller = TabController(
      vsync: this,
      length: tabs.length,
      initialIndex: 0,
    );
  }

  void onClose() {
    controller.dispose();
  }

  TodoTabController() {
    onInit();
  }

  @override
  Widget build(BuildContext context) => const Material();
}
