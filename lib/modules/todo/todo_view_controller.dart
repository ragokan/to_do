import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoTabController extends GetxController
    with SingleGetTickerProviderMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: 'Active'),
    const Tab(text: 'Completed'),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(
      vsync: this,
      length: tabs.length,
      initialIndex: 0,
    );
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
