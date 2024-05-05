part of 'todos_bloc.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState.main({
    @Default(false) bool lazyLoad,
    required bool loading,
    required List<TodoModel> todos,
    @Default(true) bool hasMore,
    String? error,
    @Default(false) bool todoIsLoading,
  }) = MainState;
}
