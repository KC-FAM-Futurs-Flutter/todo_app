import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_state.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  // final getIt = GetIt.instance;
  late TodoListCubit cubit;

  setUp(() async {
    SharedPreferences.setMockInitialValues({
      'todos_key': jsonEncode([
        {'id': '1', 'desc': 'Todo 1', 'completed': false},
        {'id': '2', 'desc': 'Todo 2', 'completed': true},
      ]),
    });

    // getIt.registerLazySingleton(() => TodoListCubit());
    cubit = TodoListCubit();
    await cubit.initTodos();
  });

  tearDown(() {
    cubit.close();
  });

  group('TodoCubit Tests', () {
    test('increment() emite un valor incrementado', () {
      cubit.increment();

      expect(cubit.state.activeTodoCount, 2);
    });

    test('initTodos carga todos y calcula activeTodoCount correctamente', () {
      expect(cubit.state.todos.length, 2);
      expect(cubit.state.activeTodoCount, 1);
    });
    test('Filter.all debe mostrar todos los todos', () {
      cubit.setFilteredTodos(Filter.all);
      expect(cubit.state.selectedFilter, Filter.all);
      expect(cubit.state.todosFiltered.length, 2);
    });
    test('Filter.completed debe mostrar solo los completados', () {
      cubit.setFilteredTodos(Filter.completed);
      expect(cubit.state.selectedFilter, Filter.completed);
      expect(cubit.state.todosFiltered.length, 1);
    });
  });
}
