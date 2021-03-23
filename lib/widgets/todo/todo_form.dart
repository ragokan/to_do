import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/modules/todo/todo_form_controller.dart';
import '../custom_scaffold.dart';

Widget TodoForm(TodoFormController todoFormController) => CustomScaffold(
      title: '${todoFormController.formText.capitalize} to_do',
      child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'to_do title'),
                controller: todoFormController.titleController,
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(labelText: 'to_do description'),
                controller: todoFormController.descriptionController,
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: todoFormController.submitForm,
                style: ElevatedButton.styleFrom(
                  primary: Get.theme!.primaryColor,
                  elevation: 3,
                ),
                child: Text(
                  '${todoFormController.formText.capitalize} to_do',
                ),
              ),
            ],
          )),
    );
