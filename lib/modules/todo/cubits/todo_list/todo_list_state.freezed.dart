// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoListState {

 int get activeTodoCount; List<TodoModel> get todosFiltered; Filter get selectedFilter; TodoModel? get selectedTodo; List<TodoModel> get todos;
/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoListStateCopyWith<TodoListState> get copyWith => _$TodoListStateCopyWithImpl<TodoListState>(this as TodoListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoListState&&(identical(other.activeTodoCount, activeTodoCount) || other.activeTodoCount == activeTodoCount)&&const DeepCollectionEquality().equals(other.todosFiltered, todosFiltered)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.selectedTodo, selectedTodo) || other.selectedTodo == selectedTodo)&&const DeepCollectionEquality().equals(other.todos, todos));
}


@override
int get hashCode => Object.hash(runtimeType,activeTodoCount,const DeepCollectionEquality().hash(todosFiltered),selectedFilter,selectedTodo,const DeepCollectionEquality().hash(todos));

@override
String toString() {
  return 'TodoListState(activeTodoCount: $activeTodoCount, todosFiltered: $todosFiltered, selectedFilter: $selectedFilter, selectedTodo: $selectedTodo, todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TodoListStateCopyWith<$Res>  {
  factory $TodoListStateCopyWith(TodoListState value, $Res Function(TodoListState) _then) = _$TodoListStateCopyWithImpl;
@useResult
$Res call({
 int activeTodoCount, List<TodoModel> todosFiltered, Filter selectedFilter, TodoModel? selectedTodo, List<TodoModel> todos
});




}
/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._self, this._then);

  final TodoListState _self;
  final $Res Function(TodoListState) _then;

/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeTodoCount = null,Object? todosFiltered = null,Object? selectedFilter = null,Object? selectedTodo = freezed,Object? todos = null,}) {
  return _then(_self.copyWith(
activeTodoCount: null == activeTodoCount ? _self.activeTodoCount : activeTodoCount // ignore: cast_nullable_to_non_nullable
as int,todosFiltered: null == todosFiltered ? _self.todosFiltered : todosFiltered // ignore: cast_nullable_to_non_nullable
as List<TodoModel>,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as Filter,selectedTodo: freezed == selectedTodo ? _self.selectedTodo : selectedTodo // ignore: cast_nullable_to_non_nullable
as TodoModel?,todos: null == todos ? _self.todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoListState].
extension TodoListStatePatterns on TodoListState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoListState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoListState value)  $default,){
final _that = this;
switch (_that) {
case _TodoListState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoListState value)?  $default,){
final _that = this;
switch (_that) {
case _TodoListState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int activeTodoCount,  List<TodoModel> todosFiltered,  Filter selectedFilter,  TodoModel? selectedTodo,  List<TodoModel> todos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoListState() when $default != null:
return $default(_that.activeTodoCount,_that.todosFiltered,_that.selectedFilter,_that.selectedTodo,_that.todos);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int activeTodoCount,  List<TodoModel> todosFiltered,  Filter selectedFilter,  TodoModel? selectedTodo,  List<TodoModel> todos)  $default,) {final _that = this;
switch (_that) {
case _TodoListState():
return $default(_that.activeTodoCount,_that.todosFiltered,_that.selectedFilter,_that.selectedTodo,_that.todos);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int activeTodoCount,  List<TodoModel> todosFiltered,  Filter selectedFilter,  TodoModel? selectedTodo,  List<TodoModel> todos)?  $default,) {final _that = this;
switch (_that) {
case _TodoListState() when $default != null:
return $default(_that.activeTodoCount,_that.todosFiltered,_that.selectedFilter,_that.selectedTodo,_that.todos);case _:
  return null;

}
}

}

/// @nodoc


class _TodoListState implements TodoListState {
  const _TodoListState({this.activeTodoCount = 0, final  List<TodoModel> todosFiltered = const [], this.selectedFilter = Filter.all, this.selectedTodo = null, final  List<TodoModel> todos = const []}): _todosFiltered = todosFiltered,_todos = todos;
  

@override@JsonKey() final  int activeTodoCount;
 final  List<TodoModel> _todosFiltered;
@override@JsonKey() List<TodoModel> get todosFiltered {
  if (_todosFiltered is EqualUnmodifiableListView) return _todosFiltered;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todosFiltered);
}

@override@JsonKey() final  Filter selectedFilter;
@override@JsonKey() final  TodoModel? selectedTodo;
 final  List<TodoModel> _todos;
@override@JsonKey() List<TodoModel> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoListStateCopyWith<_TodoListState> get copyWith => __$TodoListStateCopyWithImpl<_TodoListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoListState&&(identical(other.activeTodoCount, activeTodoCount) || other.activeTodoCount == activeTodoCount)&&const DeepCollectionEquality().equals(other._todosFiltered, _todosFiltered)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.selectedTodo, selectedTodo) || other.selectedTodo == selectedTodo)&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,activeTodoCount,const DeepCollectionEquality().hash(_todosFiltered),selectedFilter,selectedTodo,const DeepCollectionEquality().hash(_todos));

@override
String toString() {
  return 'TodoListState(activeTodoCount: $activeTodoCount, todosFiltered: $todosFiltered, selectedFilter: $selectedFilter, selectedTodo: $selectedTodo, todos: $todos)';
}


}

/// @nodoc
abstract mixin class _$TodoListStateCopyWith<$Res> implements $TodoListStateCopyWith<$Res> {
  factory _$TodoListStateCopyWith(_TodoListState value, $Res Function(_TodoListState) _then) = __$TodoListStateCopyWithImpl;
@override @useResult
$Res call({
 int activeTodoCount, List<TodoModel> todosFiltered, Filter selectedFilter, TodoModel? selectedTodo, List<TodoModel> todos
});




}
/// @nodoc
class __$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateCopyWith<$Res> {
  __$TodoListStateCopyWithImpl(this._self, this._then);

  final _TodoListState _self;
  final $Res Function(_TodoListState) _then;

/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeTodoCount = null,Object? todosFiltered = null,Object? selectedFilter = null,Object? selectedTodo = freezed,Object? todos = null,}) {
  return _then(_TodoListState(
activeTodoCount: null == activeTodoCount ? _self.activeTodoCount : activeTodoCount // ignore: cast_nullable_to_non_nullable
as int,todosFiltered: null == todosFiltered ? _self._todosFiltered : todosFiltered // ignore: cast_nullable_to_non_nullable
as List<TodoModel>,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as Filter,selectedTodo: freezed == selectedTodo ? _self.selectedTodo : selectedTodo // ignore: cast_nullable_to_non_nullable
as TodoModel?,todos: null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoModel>,
  ));
}


}

// dart format on
