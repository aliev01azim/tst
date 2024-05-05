// Package imports:

import 'package:get/route_manager.dart';

import '../../../modules/auth/presentation/screens/login/login_screen.dart';
import '../../statics/consts.dart';
import '../flutter_secure_storage.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'connection_service.dart';
import '../../../modules/auth/domain/usecases/auth_usecase.dart';
import '../../../modules/auth/domain/usecases/token_usecase.dart';

class AppInterceptor extends Interceptor {
  final ConnectivityService connectivityService;
  final TokenUseCase tokenUseCase;
  final AuthUseCase authUseCase;

  AppInterceptor({
    required this.connectivityService,
    required this.tokenUseCase,
    required this.authUseCase,
  });

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token =
        await tokenUseCase.getAccessToken(); // Получение токена из хранилища
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (!connectivityService.hasActiveConnection) {
      return handler.reject(DioException(
        response: Response(
          data: 'No internet connection',
          requestOptions: err.requestOptions,
        ),
        requestOptions: err.requestOptions,
        type: DioExceptionType.connectionError,
      ));
    }
    if (err.response?.statusCode == 401) {
      final refreshToken = await tokenUseCase.getRefreshToken();
      if (refreshToken == null) {
        await Get.offAllNamed(GetPages.auth,
            predicate: (route) => route is LoginScreen);
        return handler.reject(err);
      }
      final tokenResult = await tokenUseCase.refreshToken(refreshToken);
      await tokenResult.fold((l) async {
         await Get.offAllNamed(GetPages.auth,
            predicate: (route) => route is LoginScreen);
        return handler.reject(err);
      }, (r) async {
        await FSSService.saveToken(r);
      });
    }
    return handler.next(err);
  }
}
