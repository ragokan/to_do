import 'package:flutter/material.dart';
import 'package:okito/okito.dart';

import '../../modules/todo/todo_form_controller.dart';
import '../custom_scaffold.dart';

Widget TodoForm(TodoFormController todoFormController, BuildContext context) =>
    CustomScaffold(
      title: '${todoFormController.formText} to_do',
      child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'to_do title'),
                controller: todoFormController.titleController,
              ),
              const SizedBox(height: 15),
              TextField(
                decoration:
                    const InputDecoration(labelText: 'to_do description'),
                controller: todoFormController.descriptionController,
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: todoFormController.submitForm,
                style: ElevatedButton.styleFrom(
                  primary: Okito.theme!.primaryColor,
                  elevation: 3,
                ),
                child: Text(
                  '${todoFormController.formText} to_do',
                ),
              ),
            ],
          )),
    );
