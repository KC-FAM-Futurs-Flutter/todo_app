import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/modules/todo/data/models/todo_model.dart';
part 'todo_list_state.freezed.dart';

@freezed
abstract class TodoListState with _$TodoListState {
  const factory TodoListState({
    @Default(0) int activeTodoCount,
    @Default([]) List<TodoModel> todosFiltered,
    @Default(Filter.all) Filter selectedFilter,
    @Default(null) TodoModel? selectedTodo,
    @Default([]) List<TodoModel> todos,
  }) = _TodoListState;
}
