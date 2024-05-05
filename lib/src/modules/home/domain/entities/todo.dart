// Project imports:
import '../../data/dto/todo_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo.freezed.dart';
@freezed
sealed class TodoModel with _$TodoModel{
  const factory TodoModel({
    required int id,
    required int userId,
    required String title,
    required bool completed,
  }) = _TodoModel;


  factory TodoModel.fromDto(TodoDTO postDTO) {
    return TodoModel(
      id: postDTO.id,
      userId: postDTO.userId,
      title: postDTO.title,
      completed: postDTO.completed,
    );
  }

}
