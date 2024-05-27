// Package imports:
import 'dart:math';

import '../../../../infrastructure/services/hive_service.dart';
import '../../../../infrastructure/statics/consts.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:
import '../../../../common/models/lazy_load_response.dart';
import '../dto/todo_dto.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import 'todos_data_source.dart';

class TodosDataSourceImpl implements TodosDataSource {
  final Dio dio;
  TodosDataSourceImpl(this.dio);

  @override
  Future<Either<TodosException, LazyLoadResponse<TodoDTO>>> fetchTodos(
      {int start = 0, int limit = 20}) async {
    try {
      final cachedData =
          await HiveService.getItem<List?>(boxEnum: Boxes.todos, key: start);
      if (cachedData != null && cachedData.isNotEmpty) {
        return Right(LazyLoadResponse<TodoDTO>(
          data: cachedData
              .map((e) => TodoDTO.fromJson(Map<String, dynamic>.from(e)))
              .toList(),
        ));
      }

      // Если данные отсутствуют в кэше, выполняем запрос
      final response = await dio.get(
        'todos',
        queryParameters: {'userId': start},
      );
      var json = (response.data as List);
      final List<TodoDTO> todos = json
          .map((item) => TodoDTO.fromJson(item as Map<String, dynamic>))
          .toList();
      await HiveService.putItem<List>(
          item: json, boxEnum: Boxes.todos, key: start);

      //тут не приходит 'x-total-count' поэтому логика завершения lazy-load(а) перенесена в сам стейт мессенджер
      // final totalCount = response.headers.map['x-total-count'];
      // final int totalPages =
      //     (totalCount != null) ? (int.parse(totalCount.first) ~/ limit) + 1 : 1;
      // final int currentPage = (start ~/ limit) + 1;

      return Right(LazyLoadResponse<TodoDTO>(
        statusCode: response.statusCode!,
        data: todos,
      ));
    } on DioException catch (error) {
      return Left(TodosException(error: error.response?.data));
    } catch (error) {
      print(error);
      return Left(TodosException());
    }
  }

  @override
  Future<void> clearCache() async {
    await HiveService.clearBox(boxEnum: Boxes.todos);
  }

  @override
  Future<Either<TodoAddException, TodoDTO>> addTodo(
      {required String title, required bool completed}) async {
    try {
      int randomNumber = Random().nextInt(10000) + 201;
      var item = {
        "userId": 11,
        "id": randomNumber,
        "title": title,
        "completed": completed
      };
      await Future.delayed(const Duration(seconds: 1));
      await HiveService.putItem<Map<String, dynamic>>(
        item: item,
        boxEnum: Boxes.todos,
        key: randomNumber,
      );
      return Right(TodoDTO.fromJson(item));
    } catch (e) {
      return Left(TodoAddException(error: 'smthng'));
    }
  }

  @override
  Future<Either<TodoEditException, void>> editTodo(
      {required TodoDTO item}) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final json = await HiveService.getItem<List?>(
        boxEnum: Boxes.todos,
        key: item.userId,
      );

      if (json != null && json.isNotEmpty) {
        final editedIndex =
            json.indexWhere((element) => element['id'] == item.id);
        if (editedIndex != -1) {
          final newJson = [...json];
          newJson[editedIndex] = item.toJson();
          await HiveService.putItem<List>(
            item: newJson,
            boxEnum: Boxes.todos,
            key: item.userId,
          );
        }
      }
      return Right(print('successed'));
    } catch (e) {
      return Left(TodoEditException(error: 'smthng'));
    }
  }
}
