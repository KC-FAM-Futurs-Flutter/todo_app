import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_app/modules/todo/data/models/todo_model.dart';
import 'package:todo_app/modules/todo/ui/utils/background_dismissible.dart';
import 'package:todo_app/modules/todo/ui/widgets/todo_item_widget.dart';

class ListTodosWidget extends StatelessWidget {
  final List<TodoModel> todos;
  const ListTodosWidget({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: ValueKey(todos[index].id),
          onDismissed: (_) {
            context.read<TodoListCubit>().removeTodo(todos[index]);
          },
          confirmDismiss: (_) {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("¿Estas seguro de querer realizar borrar?"),
                  content: Text("Esta acción es permanente"),

                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: Text("SI"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: Text("NO"),
                    ),
                  ],
                );
              },
            );
          },
          background: BackgroundDismissible(direction: 0),
          secondaryBackground: BackgroundDismissible(direction: 1),
          child: TodoItemWidget(
            desc: todos[index].desc,
            isCompleted: todos[index].completed,
            id: todos[index].id,

            todoModel: todos[index],
          ),
        );
      },
    );
  }
}
