import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/modules/todo/data/models/todo_model.dart';
import 'package:todo_app/modules/todo/data/providers/todo_provider.dart';

class TodoFirestoreProvider implements TodoProvider {
  static const String todosKey = 'todos';
  @override
  Future<List<TodoModel>> loadTodos() async {
    try {
      final query = await _getTodos();
      final todos = query.docs.map((snapshot) => snapshot.data()).toList();
      return todos;
    } catch (e) {
      return [];
    }
  }

  Future<QuerySnapshot<TodoModel>> _getTodos() async {
    return await FirebaseFirestore.instance
        .collection(todosKey)
        .
        // where('idUser')
        withConverter(
          fromFirestore: (snapshot, options) =>
              TodoModel.fromJson(snapshot.data()!),
          toFirestore: (data, options) => data.toJson(),
        )
        .get();
  }

  @override
  Future<void> addTodo(TodoModel todo) async {
    await FirebaseFirestore.instance
        .collection(todosKey)
        .doc(todo.id)
        .set(todo.toJson(), SetOptions(merge: true));
  }

  @override
  Future<void> updateTodo(TodoModel updated) async {
    await FirebaseFirestore.instance
        .collection(todosKey)
        .doc(updated.id)
        .set(updated.toJson(), SetOptions(merge: true));
  }

  @override
  Future<void> deleteTodo(String id) async {
    await FirebaseFirestore.instance.collection(todosKey).doc(id).delete();
  }

  @override
  Future<void> clearTodos() async {
    // await FirebaseFirestore.instance.collection(todosKey).delelete();
  }
}
