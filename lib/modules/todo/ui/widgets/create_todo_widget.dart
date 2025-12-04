import 'package:flutter/material.dart';
import 'package:todo_app/core/locator/locator.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_cubit.dart';

class CreateTodoWidget extends StatelessWidget {
  const CreateTodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text("¿Qué quieres hacer?")),
      onSubmitted: (value) {
        locator<TodoListCubit>().addTodo(value);
      },
    );
  }
}
