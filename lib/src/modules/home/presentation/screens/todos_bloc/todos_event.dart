part of 'todos_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.fetchTodos({@Default(false) bool refresh}) = FetchTodos;
  const factory TodosEvent.addTodo({required bool completed,required String title}) = AddTodo;
  const factory TodosEvent.editTodo({required int id,required bool completed,required String title}) = EditTodo;
  const factory TodosEvent.reset() = ResetTodos;
}
