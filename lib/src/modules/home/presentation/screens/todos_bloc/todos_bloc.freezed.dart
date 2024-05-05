// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodosState {
  bool get lazyLoad => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  List<TodoModel> get todos => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get todoIsLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool lazyLoad,
            bool loading,
            List<TodoModel> todos,
            bool hasMore,
            String? error,
            bool todoIsLoading)
        main,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool lazyLoad, bool loading, List<TodoModel> todos,
            bool hasMore, String? error, bool todoIsLoading)?
        main,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool lazyLoad, bool loading, List<TodoModel> todos,
            bool hasMore, String? error, bool todoIsLoading)?
        main,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainState value) main,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainState value)? main,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainState value)? main,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodosStateCopyWith<TodosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res, TodosState>;
  @useResult
  $Res call(
      {bool lazyLoad,
      bool loading,
      List<TodoModel> todos,
      bool hasMore,
      String? error,
      bool todoIsLoading});
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res, $Val extends TodosState>
    implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lazyLoad = null,
    Object? loading = null,
    Object? todos = null,
    Object? hasMore = null,
    Object? error = freezed,
    Object? todoIsLoading = null,
  }) {
    return _then(_value.copyWith(
      lazyLoad: null == lazyLoad
          ? _value.lazyLoad
          : lazyLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      todoIsLoading: null == todoIsLoading
          ? _value.todoIsLoading
          : todoIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool lazyLoad,
      bool loading,
      List<TodoModel> todos,
      bool hasMore,
      String? error,
      bool todoIsLoading});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lazyLoad = null,
    Object? loading = null,
    Object? todos = null,
    Object? hasMore = null,
    Object? error = freezed,
    Object? todoIsLoading = null,
  }) {
    return _then(_$MainStateImpl(
      lazyLoad: null == lazyLoad
          ? _value.lazyLoad
          : lazyLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      todoIsLoading: null == todoIsLoading
          ? _value.todoIsLoading
          : todoIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainStateImpl with DiagnosticableTreeMixin implements MainState {
  const _$MainStateImpl(
      {this.lazyLoad = false,
      required this.loading,
      required final List<TodoModel> todos,
      this.hasMore = true,
      this.error,
      this.todoIsLoading = false})
      : _todos = todos;

  @override
  @JsonKey()
  final bool lazyLoad;
  @override
  final bool loading;
  final List<TodoModel> _todos;
  @override
  List<TodoModel> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  @JsonKey()
  final bool hasMore;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool todoIsLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.main(lazyLoad: $lazyLoad, loading: $loading, todos: $todos, hasMore: $hasMore, error: $error, todoIsLoading: $todoIsLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosState.main'))
      ..add(DiagnosticsProperty('lazyLoad', lazyLoad))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('hasMore', hasMore))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('todoIsLoading', todoIsLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.lazyLoad, lazyLoad) ||
                other.lazyLoad == lazyLoad) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.todoIsLoading, todoIsLoading) ||
                other.todoIsLoading == todoIsLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      lazyLoad,
      loading,
      const DeepCollectionEquality().hash(_todos),
      hasMore,
      error,
      todoIsLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool lazyLoad,
            bool loading,
            List<TodoModel> todos,
            bool hasMore,
            String? error,
            bool todoIsLoading)
        main,
  }) {
    return main(lazyLoad, loading, todos, hasMore, error, todoIsLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool lazyLoad, bool loading, List<TodoModel> todos,
            bool hasMore, String? error, bool todoIsLoading)?
        main,
  }) {
    return main?.call(lazyLoad, loading, todos, hasMore, error, todoIsLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool lazyLoad, bool loading, List<TodoModel> todos,
            bool hasMore, String? error, bool todoIsLoading)?
        main,
    required TResult orElse(),
  }) {
    if (main != null) {
      return main(lazyLoad, loading, todos, hasMore, error, todoIsLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainState value) main,
  }) {
    return main(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainState value)? main,
  }) {
    return main?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainState value)? main,
    required TResult orElse(),
  }) {
    if (main != null) {
      return main(this);
    }
    return orElse();
  }
}

abstract class MainState implements TodosState {
  const factory MainState(
      {final bool lazyLoad,
      required final bool loading,
      required final List<TodoModel> todos,
      final bool hasMore,
      final String? error,
      final bool todoIsLoading}) = _$MainStateImpl;

  @override
  bool get lazyLoad;
  @override
  bool get loading;
  @override
  List<TodoModel> get todos;
  @override
  bool get hasMore;
  @override
  String? get error;
  @override
  bool get todoIsLoading;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) fetchTodos,
    required TResult Function(bool completed, String title) addTodo,
    required TResult Function(int id, bool completed, String title) editTodo,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? fetchTodos,
    TResult? Function(bool completed, String title)? addTodo,
    TResult? Function(int id, bool completed, String title)? editTodo,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? fetchTodos,
    TResult Function(bool completed, String title)? addTodo,
    TResult Function(int id, bool completed, String title)? editTodo,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTodos value) fetchTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(EditTodo value) editTodo,
    required TResult Function(ResetTodos value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTodos value)? fetchTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(EditTodo value)? editTodo,
    TResult? Function(ResetTodos value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTodos value)? fetchTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(EditTodo value)? editTodo,
    TResult Function(ResetTodos value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosEventCopyWith<$Res> {
  factory $TodosEventCopyWith(
          TodosEvent value, $Res Function(TodosEvent) then) =
      _$TodosEventCopyWithImpl<$Res, TodosEvent>;
}

/// @nodoc
class _$TodosEventCopyWithImpl<$Res, $Val extends TodosEvent>
    implements $TodosEventCopyWith<$Res> {
  _$TodosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTodosImplCopyWith<$Res> {
  factory _$$FetchTodosImplCopyWith(
          _$FetchTodosImpl value, $Res Function(_$FetchTodosImpl) then) =
      __$$FetchTodosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool refresh});
}

/// @nodoc
class __$$FetchTodosImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$FetchTodosImpl>
    implements _$$FetchTodosImplCopyWith<$Res> {
  __$$FetchTodosImplCopyWithImpl(
      _$FetchTodosImpl _value, $Res Function(_$FetchTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_$FetchTodosImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchTodosImpl with DiagnosticableTreeMixin implements FetchTodos {
  const _$FetchTodosImpl({this.refresh = false});

  @override
  @JsonKey()
  final bool refresh;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.fetchTodos(refresh: $refresh)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosEvent.fetchTodos'))
      ..add(DiagnosticsProperty('refresh', refresh));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTodosImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTodosImplCopyWith<_$FetchTodosImpl> get copyWith =>
      __$$FetchTodosImplCopyWithImpl<_$FetchTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) fetchTodos,
    required TResult Function(bool completed, String title) addTodo,
    required TResult Function(int id, bool completed, String title) editTodo,
    required TResult Function() reset,
  }) {
    return fetchTodos(refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? fetchTodos,
    TResult? Function(bool completed, String title)? addTodo,
    TResult? Function(int id, bool completed, String title)? editTodo,
    TResult? Function()? reset,
  }) {
    return fetchTodos?.call(refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? fetchTodos,
    TResult Function(bool completed, String title)? addTodo,
    TResult Function(int id, bool completed, String title)? editTodo,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetchTodos != null) {
      return fetchTodos(refresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTodos value) fetchTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(EditTodo value) editTodo,
    required TResult Function(ResetTodos value) reset,
  }) {
    return fetchTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTodos value)? fetchTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(EditTodo value)? editTodo,
    TResult? Function(ResetTodos value)? reset,
  }) {
    return fetchTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTodos value)? fetchTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(EditTodo value)? editTodo,
    TResult Function(ResetTodos value)? reset,
    required TResult orElse(),
  }) {
    if (fetchTodos != null) {
      return fetchTodos(this);
    }
    return orElse();
  }
}

abstract class FetchTodos implements TodosEvent {
  const factory FetchTodos({final bool refresh}) = _$FetchTodosImpl;

  bool get refresh;
  @JsonKey(ignore: true)
  _$$FetchTodosImplCopyWith<_$FetchTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTodoImplCopyWith<$Res> {
  factory _$$AddTodoImplCopyWith(
          _$AddTodoImpl value, $Res Function(_$AddTodoImpl) then) =
      __$$AddTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool completed, String title});
}

/// @nodoc
class __$$AddTodoImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$AddTodoImpl>
    implements _$$AddTodoImplCopyWith<$Res> {
  __$$AddTodoImplCopyWithImpl(
      _$AddTodoImpl _value, $Res Function(_$AddTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
    Object? title = null,
  }) {
    return _then(_$AddTodoImpl(
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTodoImpl with DiagnosticableTreeMixin implements AddTodo {
  const _$AddTodoImpl({required this.completed, required this.title});

  @override
  final bool completed;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.addTodo(completed: $completed, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosEvent.addTodo'))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoImpl &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completed, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      __$$AddTodoImplCopyWithImpl<_$AddTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) fetchTodos,
    required TResult Function(bool completed, String title) addTodo,
    required TResult Function(int id, bool completed, String title) editTodo,
    required TResult Function() reset,
  }) {
    return addTodo(completed, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? fetchTodos,
    TResult? Function(bool completed, String title)? addTodo,
    TResult? Function(int id, bool completed, String title)? editTodo,
    TResult? Function()? reset,
  }) {
    return addTodo?.call(completed, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? fetchTodos,
    TResult Function(bool completed, String title)? addTodo,
    TResult Function(int id, bool completed, String title)? editTodo,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(completed, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTodos value) fetchTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(EditTodo value) editTodo,
    required TResult Function(ResetTodos value) reset,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTodos value)? fetchTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(EditTodo value)? editTodo,
    TResult? Function(ResetTodos value)? reset,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTodos value)? fetchTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(EditTodo value)? editTodo,
    TResult Function(ResetTodos value)? reset,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class AddTodo implements TodosEvent {
  const factory AddTodo(
      {required final bool completed,
      required final String title}) = _$AddTodoImpl;

  bool get completed;
  String get title;
  @JsonKey(ignore: true)
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTodoImplCopyWith<$Res> {
  factory _$$EditTodoImplCopyWith(
          _$EditTodoImpl value, $Res Function(_$EditTodoImpl) then) =
      __$$EditTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool completed, String title});
}

/// @nodoc
class __$$EditTodoImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$EditTodoImpl>
    implements _$$EditTodoImplCopyWith<$Res> {
  __$$EditTodoImplCopyWithImpl(
      _$EditTodoImpl _value, $Res Function(_$EditTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? completed = null,
    Object? title = null,
  }) {
    return _then(_$EditTodoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTodoImpl with DiagnosticableTreeMixin implements EditTodo {
  const _$EditTodoImpl(
      {required this.id, required this.completed, required this.title});

  @override
  final int id;
  @override
  final bool completed;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.editTodo(id: $id, completed: $completed, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosEvent.editTodo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTodoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, completed, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTodoImplCopyWith<_$EditTodoImpl> get copyWith =>
      __$$EditTodoImplCopyWithImpl<_$EditTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) fetchTodos,
    required TResult Function(bool completed, String title) addTodo,
    required TResult Function(int id, bool completed, String title) editTodo,
    required TResult Function() reset,
  }) {
    return editTodo(id, completed, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? fetchTodos,
    TResult? Function(bool completed, String title)? addTodo,
    TResult? Function(int id, bool completed, String title)? editTodo,
    TResult? Function()? reset,
  }) {
    return editTodo?.call(id, completed, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? fetchTodos,
    TResult Function(bool completed, String title)? addTodo,
    TResult Function(int id, bool completed, String title)? editTodo,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (editTodo != null) {
      return editTodo(id, completed, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTodos value) fetchTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(EditTodo value) editTodo,
    required TResult Function(ResetTodos value) reset,
  }) {
    return editTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTodos value)? fetchTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(EditTodo value)? editTodo,
    TResult? Function(ResetTodos value)? reset,
  }) {
    return editTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTodos value)? fetchTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(EditTodo value)? editTodo,
    TResult Function(ResetTodos value)? reset,
    required TResult orElse(),
  }) {
    if (editTodo != null) {
      return editTodo(this);
    }
    return orElse();
  }
}

abstract class EditTodo implements TodosEvent {
  const factory EditTodo(
      {required final int id,
      required final bool completed,
      required final String title}) = _$EditTodoImpl;

  int get id;
  bool get completed;
  String get title;
  @JsonKey(ignore: true)
  _$$EditTodoImplCopyWith<_$EditTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetTodosImplCopyWith<$Res> {
  factory _$$ResetTodosImplCopyWith(
          _$ResetTodosImpl value, $Res Function(_$ResetTodosImpl) then) =
      __$$ResetTodosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetTodosImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$ResetTodosImpl>
    implements _$$ResetTodosImplCopyWith<$Res> {
  __$$ResetTodosImplCopyWithImpl(
      _$ResetTodosImpl _value, $Res Function(_$ResetTodosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetTodosImpl with DiagnosticableTreeMixin implements ResetTodos {
  const _$ResetTodosImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodosEvent.reset'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetTodosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) fetchTodos,
    required TResult Function(bool completed, String title) addTodo,
    required TResult Function(int id, bool completed, String title) editTodo,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? fetchTodos,
    TResult? Function(bool completed, String title)? addTodo,
    TResult? Function(int id, bool completed, String title)? editTodo,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? fetchTodos,
    TResult Function(bool completed, String title)? addTodo,
    TResult Function(int id, bool completed, String title)? editTodo,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTodos value) fetchTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(EditTodo value) editTodo,
    required TResult Function(ResetTodos value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTodos value)? fetchTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(EditTodo value)? editTodo,
    TResult? Function(ResetTodos value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTodos value)? fetchTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(EditTodo value)? editTodo,
    TResult Function(ResetTodos value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetTodos implements TodosEvent {
  const factory ResetTodos() = _$ResetTodosImpl;
}
