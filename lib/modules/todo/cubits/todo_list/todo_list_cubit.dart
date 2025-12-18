import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/modules/todo/cubits/todo_list/todo_list_state.dart';
import 'package:todo_app/modules/todo/data/models/todo_model.dart';

import 'package:todo_app/modules/todo/data/repository/todo_repository.dart';

class TodoListCubit extends Cubit<TodoListState> {
  final TodoRepository todoRepository;
  TodoListCubit({required this.todoRepository}) : super(TodoListState()) {
    initTodos();
  }
  // final todoRepository = TodoFirestoreProvider();

  Future<void> initTodos() async {
    //Llamada al repositorio de los datos
    List<TodoModel> myInitList = [];

    myInitList = await todoRepository.loadTodos();

    emit(state.copyWith(todos: myInitList));

    calculateActiveCount();
  }

  void toggleTodo(String id) {
    final List<TodoModel> newTodos = state.todos.map((todo) {
      if (todo.id == id) {
        final myNewModel = TodoModel(
          desc: todo.desc,
          completed: !todo.completed,

          id: todo.id,
        );

        todoRepository.updateTodo(myNewModel);
        return myNewModel;
      }
      return todo;
    }).toList();

    emit(state.copyWith(todos: newTodos));
    setFilteredTodos(state.selectedFilter);

    calculateActiveCount();
  }

  void editTodo({required String id, required String todoDesc}) {
    final newTodos = state.todos.map((element) {
      if (element.id == id) {
        final myNewModel = TodoModel(
          desc: todoDesc,
          id: id,
          completed: element.completed,
        );
        todoRepository.updateTodo(myNewModel);
        return myNewModel;
      }
      return element;
    }).toList();
    emit(state.copyWith(todos: newTodos));
    setFilteredTodos(state.selectedFilter);
  }

  void calculateActiveCount() {
    final int activeTodoCount = state.todos
        .where((element) => !element.completed)
        .toList()
        .length;
    emit(state.copyWith(activeTodoCount: activeTodoCount));
  }

  void setFilteredTodos(Filter filter) {
    List<TodoModel> filteredTodos;

    switch (filter) {
      case Filter.active:
        filteredTodos = state.todos
            .where((element) => element.completed == false)
            .toList();
        emit(state.copyWith(selectedFilter: Filter.active));
        break;
      case Filter.completed:
        filteredTodos = state.todos
            .where((element) => element.completed == true)
            .toList();
        emit(state.copyWith(selectedFilter: Filter.completed));
        break;
      case Filter.all:
        filteredTodos = state.todos;
        emit(state.copyWith(selectedFilter: Filter.all));
        break;
    }

    emit(state.copyWith(todosFiltered: filteredTodos));
  }

  void searchTodo(String text) {
    List<TodoModel> filteredTodos;

    if (state.selectedFilter == Filter.active) {
      filteredTodos = state.todos
          .where((element) => element.desc.contains(text))
          .where((element) => element.completed == false)
          .toList();
      emit(state.copyWith(todosFiltered: filteredTodos));
    }

    if (state.selectedFilter == Filter.completed) {
      filteredTodos = state.todos
          .where((element) => element.desc.contains(text))
          .where((element) => element.completed == true)
          .toList();
      emit(state.copyWith(todosFiltered: filteredTodos));
    }

    if (state.selectedFilter == Filter.all) {
      filteredTodos = state.todos
          .where((element) => element.desc.contains(text))
          .toList();
      emit(state.copyWith(todosFiltered: filteredTodos));
    }
  }

  void selectedCubit(TodoModel todo) {
    emit(state.copyWith(selectedTodo: todo));
  }

  void addTodo(String todoDesc) {
    final TodoModel newTodo = TodoModel(desc: todoDesc, id: uuid.v4());

    final List<TodoModel> newTodos = [...state.todos, newTodo];

    emit(state.copyWith(todos: newTodos, selectedFilter: Filter.all));

    todoRepository.addTodo(newTodo);

    setFilteredTodos(state.selectedFilter);

    calculateActiveCount();
  }

  void removeTodo(TodoModel todo) {
    final List<TodoModel> newTodos = state.todos
        .where((element) => todo.id != element.id)
        .toList();

    //Error: Copia por referencia
    // List<TodoModel> newTodos = state.todos;
    // newTodos.remove(todo);

    todoRepository.deleteTodo(todo.id);

    emit(state.copyWith(todos: newTodos));
    setFilteredTodos(state.selectedFilter);
  }

  void increment() {
    int myNewValue = state.activeTodoCount + 1;
    emit(state.copyWith(activeTodoCount: myNewValue));
  }
}
