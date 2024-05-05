// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
sealed class UserDTO with _$UserDTO {
  const factory UserDTO({
    required int id,
    required String name,
    required String accessToken,
    required String refreshToken,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);
  
}
