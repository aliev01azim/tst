import 'package:flutter/foundation.dart';

// Package imports:
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../domain/usecases/todos_usecase.dart';
import '../../../domain/entities/todo.dart';

// ignore: depend_on_referenced_packages

part 'todos_state.dart';
part 'todos_event.dart';
part 'todos_bloc.freezed.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final TodosUseCase todosUseCase;
  static int page = 1;
  TodosBloc({
    required this.todosUseCase,
  }) : super(const MainState(loading: true, todos: [])) {
    on<FetchTodos>((event, emit) async {
      final isLazyLoad = page != 1;
      emit(state.copyWith(loading: event.refresh || page==1, lazyLoad: isLazyLoad));
      if (event.refresh) {
        page = 1;
        //если хот рефреш - то очищаю кэш
        await todosUseCase.clearCache();
      }
      final result = await todosUseCase.fetchTodos(start: page);
      result.fold(
        (l) => emit(state.copyWith(
          error: l.error,
          loading: false,
          lazyLoad: false,
        )),
        (r) {
          final todos = (!isLazyLoad || event.refresh)
              ? r.data
              : [...state.todos, ...r.data];
          emit(state.copyWith(
            todos: todos,
            error: null,
            hasMore: r.data.isNotEmpty,
            loading: false,
            lazyLoad: false,
          ));
          page+=1;
        },
      );
    }, transformer: droppable());
    on<AddTodo>((event, emit) async {
      emit(state.copyWith(todoIsLoading: true));
      final result = await todosUseCase.addTodo(
          title: event.title, completed: event.completed);
      result.fold(
        (l) => emit(state.copyWith(todoIsLoading: false)),
        (r) => emit(
          state.copyWith(
            todoIsLoading: false,
            todos: [
              r,
              ...state.todos,
            ],
          ),
        ),
      );
    });
    on<EditTodo>((event, emit) async {
      emit(state.copyWith(todoIsLoading: true));
      final currentTodoIndex =
          state.todos.indexWhere((element) => element.id == event.id);
      final editedItem = state.todos[currentTodoIndex]
          .copyWith(completed: event.completed, title: event.title);
      final result = await todosUseCase.editTodo(item: editedItem);
      result.fold((l) => emit(state.copyWith(todoIsLoading: false)), (r) {
        final todos = [...state.todos];
        todos[currentTodoIndex] = editedItem;
        emit(state.copyWith(todoIsLoading: false, todos: todos));
      });
    });
    on<ResetTodos>((event,emit){
      page=1;
    });
  }
}
