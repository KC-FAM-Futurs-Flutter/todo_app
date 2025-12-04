import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/locator/locator.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_app/modules/todo/data/models/todo_model.dart';

class TodoItemWidget extends StatelessWidget {
  final String desc;
  final String id;
  final bool isCompleted;
  final TodoModel todoModel;
  const TodoItemWidget({
    super.key,
    required this.desc,
    required this.id,
    required this.isCompleted,
    required this.todoModel,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController myEditController = TextEditingController();
    return ListTile(
      onTap: () {
        // ACCION DE NAVEGAR

        // context.goNamed(
        //   AppRouter.details.name,
        //   extra: TodoDetailsObject(todoModel: todoModel),
        // );

        // locator<TodoListCubit>().selectedCubit(todoModel);

        // context.goNamed(AppRouter.details.name);

        // ACCIÓN DE EDITAR
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Editar Tarea'),
              content: TextField(
                onSubmitted: (value) {},
                controller: myEditController,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    locator<TodoListCubit>().editTodo(
                      id: id,
                      todoDesc: myEditController.text,
                    );
                    myEditController.clear();
                    Navigator.pop(context);
                  },
                  child: Text("ACEPTAR"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("CANCELAR"),
                ),
              ],
            );
          },
        );
      },
      title: Text(desc),
      leading: Checkbox(
        value: isCompleted,
        onChanged: (value) {
          print(value);
          print(isCompleted);
          locator<TodoListCubit>().toggleTodo(id);
        },
      ),
    );
  }
}
