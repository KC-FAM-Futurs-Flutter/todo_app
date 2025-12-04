import 'package:get_it/get_it.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_cubit.dart';

GetIt locator = GetIt.instance;

void setUpLocator() async {
  await registerCubits();
}

registerCubits() async {
  if (!locator.isRegistered<TodoListCubit>()) {
    locator.registerLazySingleton(() => TodoListCubit());
  }
}
