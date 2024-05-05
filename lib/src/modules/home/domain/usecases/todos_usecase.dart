// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../common/models/lazy_load_response.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import '../../data/repositories/todos_repository.dart';
import '../entities/todo.dart';

class TodosUseCase {
  final TodosRepository _repository;

  TodosUseCase(this._repository);
  Future<Either<TodosException, LazyLoadResponse<TodoModel>>> fetchTodos(
      {int start = 0, int limit = 10}) async {
    return await _repository.fetchTodos(start: start, limit: limit);
  }

  Future<Either<TodoAddException, TodoModel>> addTodo(
      {required String title, required bool completed}) async {
    return await _repository.addTodo(title: title, completed: completed);
  }

  Future<Either<TodoEditException, void>> editTodo(
      {required TodoModel item}) async {
    return await _repository.editTodo(item: item);
  }

  Future<void> clearCache() async => await _repository.clearCache();
}
