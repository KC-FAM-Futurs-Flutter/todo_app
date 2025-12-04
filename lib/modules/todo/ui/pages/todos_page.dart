import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/locator/locator.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_state.dart';
import 'package:todo_app/modules/todo/data/models/todo_model.dart';
import 'package:todo_app/modules/todo/ui/widgets/create_todo_widget.dart';
import 'package:todo_app/modules/todo/ui/widgets/list_todos_widget.dart';
import 'package:todo_app/modules/todo/ui/widgets/search_filter_todo_widget.dart';
import 'package:todo_app/modules/todo/ui/widgets/todo_header_widget.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          BlocBuilder<TodoListCubit, TodoListState>(
            bloc: locator<TodoListCubit>(),
            builder: (context, state) {
              return TodoHeaderWidget();
            },
          ),
          SizedBox(height: 20),
          SearchFilterTodoWidget(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                BlocBuilder<TodoListCubit, TodoListState>(
                  bloc: locator<TodoListCubit>(),
                  builder: (context, state) {
                    if (state.todosFiltered.isEmpty &&
                        state.selectedFilter == Filter.active) {
                      return ListTodosWidget(todos: []);
                    }
                    if (state.todosFiltered.isEmpty &&
                        state.selectedFilter != Filter.completed) {
                      return ListTodosWidget(todos: state.todos);
                    } else {
                      return ListTodosWidget(todos: state.todosFiltered);
                    }
                  },
                ),
              ],
            ),
          ),
          CreateTodoWidget(),
        ],
      ),
    );
  }
}
