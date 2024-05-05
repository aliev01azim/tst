import '../../domain/entities/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'todo_dto.freezed.dart';
part 'todo_dto.g.dart';

@freezed
sealed class TodoDTO extends HiveObject with _$TodoDTO {
  TodoDTO._();
  factory TodoDTO({
    required int id,
    required int userId,
    required String title,
    required bool completed,
  }) = _TodoDTO;
  factory TodoDTO.fromJson(Map<String, dynamic> json) =>
      _$TodoDTOFromJson(json);

  factory TodoDTO.fromEntity(TodoModel entity) => TodoDTO(
      id: entity.id,
      userId: entity.userId,
      title: entity.title,
      completed: entity.completed);
}
