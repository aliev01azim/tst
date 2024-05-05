import 'package:freezed_annotation/freezed_annotation.dart';
// Project imports:
import '../../data/dto/user_dto.dart';
part 'token.freezed.dart';

@freezed
sealed class AuthToken with _$AuthToken {
  const factory AuthToken({
    required String token,
    required String refresh,
  }) = _AuthToken;

  factory AuthToken.fromDTO(UserDTO userDTO) {
    return AuthToken(
      token: userDTO.accessToken,
      refresh: userDTO.refreshToken,
    );
  }

}
