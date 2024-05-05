// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../dto/todo_dto.dart';
import '../../../../common/models/lazy_load_response.dart';
import '../../../../infrastructure/utils/exceptions.dart';

abstract class TodosDataSource {
  Future<Either<TodosException, LazyLoadResponse<TodoDTO>>> fetchTodos(
      {int start = 0, int limit = 10});
  Future<Either<TodoAddException, TodoDTO>> addTodo(
      {required String title, required bool completed});
  Future<Either<TodoEditException, void>> editTodo(
      {required TodoDTO item});
  Future<void> clearCache();
}
