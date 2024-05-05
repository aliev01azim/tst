// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../infrastructure/utils/exceptions.dart';
import '../entities/token.dart';
import '../../data/repositories/auth_repository.dart';

class TokenUseCase {
  final AuthRepository _repository;

  TokenUseCase(this._repository);
  bool get isInitiallyAuthed => _isInitiallyAuthed;
  late bool _isInitiallyAuthed;
  Future<void> saveToken(AuthToken token) async {
    await _repository.saveToken(token);
  }

  Future<String?> getAccessToken() async {
    final access = await _repository.getAccessToken();
    _isInitiallyAuthed = access != null;
    return access;
  }

  Future<String?> getRefreshToken() async {
    return await _repository.getRefreshToken();
  }

  Future<Either<RefreshException, AuthToken>> refreshToken(
      String refresh) async {
    return await _repository.refreshToken(refresh);
  }
}
