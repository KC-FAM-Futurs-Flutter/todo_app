import 'package:todo_app/modules/todo/data/models/todo_model.dart';

abstract class TodoProvider {
  Future<List<TodoModel>> loadTodos();

  Future<void> addTodo(TodoModel todo);

  Future<void> updateTodo(TodoModel updated);

  Future<void> deleteTodo(String id);

  Future<void> clearTodos();
}
