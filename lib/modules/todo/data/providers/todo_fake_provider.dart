import 'package:todo_app/modules/todo/data/models/todo_model.dart';
import 'package:todo_app/modules/todo/data/providers/todo_provider.dart';

class TodoFakeProvider implements TodoProvider {
  final List<TodoModel> _todosUserMock = [
    TodoModel(desc: "Todo 1", completed: false, id: '1'),
    TodoModel(desc: "Todo 2", completed: true, id: '2'),
  ];

  @override
  Future<void> addTodo(TodoModel todo) async {
    _todosUserMock.add(todo);
  }

  @override
  Future<void> clearTodos() async {
    _todosUserMock.clear();
  }

  @override
  Future<void> deleteTodo(String id) async {
    _todosUserMock.removeWhere((e) => e.id == id);
  }

  @override
  Future<List<TodoModel>> loadTodos() async => _todosUserMock;

  @override
  Future<void> updateTodo(TodoModel updated) async {
    final index = _todosUserMock.indexWhere((e) => e.id == updated.id);
    if (index != -1) _todosUserMock[index] = updated;
  }
}
