// Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:

import '../../../../common/apis/apis.dart';
import '../../domain/entities/token.dart';
import '../dto/user_dto.dart';
import '../../../../infrastructure/services/flutter_secure_storage.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import 'auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final RestClient client;
  AuthDataSourceImpl(this.client);

  @override
  Future<Either<LoginException, UserDTO>> loginUser(
      String email, String password) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return const Right(UserDTO(
          id: 1, name: 'Azim', accessToken: 'access', refreshToken: 'refresh'));
    } on DioException catch (e) {
      return Left(LoginException(error: e.response?.data));
    }
  }

  @override
  Future<void> logOut() async {
    await FSSService.deleteTokens();
  }

  @override
  Future<String?> getAccessToken() async {
    return await FSSService.getAccessToken();
  }

  @override
  Future<String?> getRefreshToken() async {
    return await FSSService.getRefreshToken();
  }

  @override
  Future<void> saveToken(AuthToken token) async {
    await FSSService.saveToken(token);
  }

  @override
  Future<Either<RefreshException, AuthToken>> refreshToken(
      String refresh) async {
    try {
      await client.refreshToken({'refresh': refresh});
      return const Right(AuthToken(token: 'access', refresh: 'refresh'));
    } on DioException catch (e) {
      return Left(RefreshException(
          e.message ?? 'На сервере ведутся работы,перезайдите позже'));
    }
  }
}
