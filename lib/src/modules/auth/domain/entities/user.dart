// Project imports:
import '../../data/dto/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
sealed class UserModel with _$UserModel {
  factory UserModel({
    required int id,
    required String name,
  }) = _UserModel;

  factory UserModel.fromDTO(UserDTO userDTO) {
    return UserModel(
      id: userDTO.id,
      name: userDTO.name,
    );
  }
}
