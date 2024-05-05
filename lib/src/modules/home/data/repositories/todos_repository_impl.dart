// Package imports:
import '../dto/todo_dto.dart';
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../common/models/lazy_load_response.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import '../../domain/entities/todo.dart';
import '../data_sources/todos_data_source.dart';
import 'todos_repository.dart';

class TodosRepositoryImpl implements TodosRepository {
  final TodosDataSource _remoteDataSource;

  TodosRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<TodosException, LazyLoadResponse<TodoModel>>> fetchTodos(
      {int start = 0, int limit = 10}) async {
    final result =
        await _remoteDataSource.fetchTodos(start: start, limit: limit);
    return result.fold((exception) => Left(exception),
        (response) => Right(response.map(TodoModel.fromDto)));
  }

  @override
  Future<void> clearCache() async {
    await _remoteDataSource.clearCache();
  }

  @override
  Future<Either<TodoAddException, TodoModel>> addTodo(
      {required String title, required bool completed}) async {
    final result =
        await _remoteDataSource.addTodo(title: title, completed: completed);
    return result.fold((l) => Left(l), (r) {
      final mapper = TodoModel.fromDto(r);
      return Right(mapper);
    });
  }

  @override
  Future<Either<TodoEditException, void>> editTodo(
      {required TodoModel item}) async {
    return await _remoteDataSource.editTodo(item: TodoDTO.fromEntity(item));
  }
}
