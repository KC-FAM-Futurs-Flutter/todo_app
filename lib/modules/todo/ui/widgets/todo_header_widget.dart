import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/locator/locator.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_state.dart';

class TodoHeaderWidget extends StatelessWidget {
  const TodoHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListCubit, TodoListState>(
      bloc: locator<TodoListCubit>(),
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("TODO", style: TextStyle(fontSize: 40)),
            Text("Tareas por realizar: ${state.activeTodoCount}"),
          ],
        );
      },
    );
  }
}
