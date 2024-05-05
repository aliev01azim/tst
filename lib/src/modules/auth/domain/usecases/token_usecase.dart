// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../infrastructure/utils/exceptions.dart';
import '../entities/token.dart';
import '../../data/repositories/auth_repository.dart';

class TokenUseCase {
  final AuthRepository _repository;

  TokenUseCase(this._repository);

  Future<void> saveToken(AuthToken token) async {
    await _repository.saveToken(token);
  }

  Future<String?> getAccessToken() async {
    return await _repository.getAccessToken();
  }

  Future<String?> getRefreshToken() async {
    return await _repository.getRefreshToken();
  }

  Future<Either<RefreshException, AuthToken>> refreshToken(
      String refresh) async {
    return await _repository.refreshToken(refresh);
  }
}
