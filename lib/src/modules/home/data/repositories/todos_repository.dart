// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../domain/entities/todo.dart';
import '../../../../common/models/lazy_load_response.dart';
import '../../../../infrastructure/utils/exceptions.dart';

abstract class TodosRepository {
  Future<Either<TodosException, LazyLoadResponse<TodoModel>>> fetchTodos(
      {int start = 0, int limit = 10});
  Future<Either<TodoAddException, TodoModel>> addTodo(
      {required String title, required bool completed});
  Future<Either<TodoEditException, void>> editTodo({required TodoModel item});
  Future<void> clearCache();
}
