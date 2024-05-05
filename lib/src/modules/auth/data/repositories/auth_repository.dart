// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../infrastructure/utils/exceptions.dart';
import '../../domain/entities/user_with_token.dart';
import '../../domain/entities/token.dart';

abstract class AuthRepository {
  Future<Either<LoginException, UserWithToken>> loginUser(
      {required String email, required String password});
  Future<void> logOut();
  Future<void> saveToken(AuthToken token);
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<Either<RefreshException, AuthToken>> refreshToken(String refresh);
}
