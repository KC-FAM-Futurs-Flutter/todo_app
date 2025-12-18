import 'dart:convert';

import 'package:todo_app/modules/todo/data/models/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoLocalProvider {
  static const String todosKey = 'todos_key';
  Future<List<TodoModel>> loadTodos() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(todosKey);

    print(jsonString);

    if (jsonString == null) return [];

    final decoded = json.decode(jsonString) as List<dynamic>;

    print(decoded);

    final result = decoded.map((e) => TodoModel.fromJson(e)).toList();

    return result;
  }

  Future<void> _saveTodos(List<TodoModel> todos) async {
    final prefs = await SharedPreferences.getInstance();

    final encoded = json.encode(todos.map((e) => e.toJson()).toList());

    print(encoded);

    await prefs.setString(todosKey, encoded);
  }

  Future<void> addTodo(TodoModel todo) async {
    final todos = await loadTodos();
    todos.add(todo);

    print(todos);

    await _saveTodos(todos);
  }

  Future<void> updateTodo(TodoModel updated) async {
    final todos = await loadTodos();

    print(updated.id);

    final index = todos.indexWhere((e) => e.id == updated.id);

    if (index != -1) {
      todos[index] = updated;

      await _saveTodos(todos);
    }
  }

  Future<void> deleteTodo(String id) async {
    final todos = await loadTodos();
    todos.removeWhere((e) => e.id == id);
    await _saveTodos(todos);
  }

  Future<void> clearTodos() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(todosKey);
  }
}
