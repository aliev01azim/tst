// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../statics/consts.dart';
import '../../../modules/auth/domain/usecases/auth_usecase.dart';
import '../../../modules/auth/domain/usecases/token_usecase.dart';
import 'app_interceptor.dart';
import 'connection_service.dart';

class DioConfig {
  static final DioConfig _instance = DioConfig._();
  factory DioConfig() => _instance;
  DioConfig._();

  void setupDio({
    required ConnectivityService connectivityService,
    required TokenUseCase tokenUseCase,
    required AuthUseCase authUseCase,
  }) {
    dio.interceptors.add(AppInterceptor(
      connectivityService: connectivityService,
      tokenUseCase: tokenUseCase,
      authUseCase: authUseCase,
    ));
  }

  final dio = Dio(BaseOptions(baseUrl: baseUrl));

  void setBaseUrl(String baseUrl) {
    dio.options.baseUrl = baseUrl;
  }

  void addLoggingInterceptor() {
    dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
  }
}
