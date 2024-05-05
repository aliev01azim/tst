// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../infrastructure/utils/exceptions.dart';
import '../../data/repositories/auth_repository.dart';
import '../entities/user_with_token.dart';

class AuthUseCase {
  final AuthRepository _repository;

  AuthUseCase(this._repository);


  Future<Either<LoginException, UserWithToken>> loginUser(
      {required String email, required String password}) {
    return _repository.loginUser(email: email, password: password);
  }

  Future<void> logOut() async {
    await _repository.logOut();
  }
}
