// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../dto/user_dto.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import '../../domain/entities/token.dart';

abstract class AuthDataSource {
  Future<Either<LoginException, UserDTO>> loginUser(
      String email, String password);
  Future<void> logOut();

  Future<void> saveToken(AuthToken token);
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<Either<RefreshException, AuthToken>> refreshToken(String refresh);
}
