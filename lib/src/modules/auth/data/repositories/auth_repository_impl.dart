// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../domain/entities/token.dart';
import '../../domain/entities/user.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import '../../domain/entities/user_with_token.dart';
import '../data_sources/auth_data_source.dart';
import '../dto/user_dto.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<LoginException, UserWithToken>> loginUser(
      {required String email, required String password}) async {
    final Either<LoginException, UserDTO> userDtoEither =
        await _remoteDataSource.loginUser(email, password);
    return userDtoEither.fold(
      (loginException) => Left(loginException),
      (userDto) {
        final userModel = UserModel.fromDTO(userDto);
        final tokenModel = AuthToken.fromDTO(userDto);
        return Right(UserWithToken(user: userModel, token: tokenModel));
      },
    );
  }

  @override
  Future<void> logOut() async {
    await _remoteDataSource.logOut();
  }

  @override
  Future<String?> getAccessToken() async{
    return await _remoteDataSource.getAccessToken();
  }

  @override
  Future<String?> getRefreshToken() async{
    return await _remoteDataSource.getRefreshToken();
  }

  @override
  Future<void> saveToken(AuthToken token) async {
    await _remoteDataSource.saveToken(token);
  }

  @override
  Future<Either<RefreshException, AuthToken>> refreshToken(
      String refresh) async {
    return await _remoteDataSource.refreshToken(refresh);
  }
}
