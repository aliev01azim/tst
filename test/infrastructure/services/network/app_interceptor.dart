// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/services/network/app_interceptor.dart';
import 'package:code_demo/src/infrastructure/services/network/connection_service.dart';
import 'package:code_demo/src/modules/auth/domain/usecases/auth_usecase.dart';
import 'package:code_demo/src/modules/auth/domain/usecases/token_usecase.dart';

// Mock классы
class MockConnectivityService extends Mock implements ConnectivityService {}
class MockTokenUseCase extends Mock implements TokenUseCase {}
class MockAuthUseCase extends Mock implements AuthUseCase {}

void main() {
  group('AppInterceptor', () {
    late AppInterceptor appInterceptor;
    late MockConnectivityService mockConnectivityService;
    late MockTokenUseCase mockTokenUseCase;
    late MockAuthUseCase mockAuthUseCase;

    setUp(() {
      mockConnectivityService = MockConnectivityService();
      mockTokenUseCase = MockTokenUseCase();
      mockAuthUseCase = MockAuthUseCase();

      appInterceptor = AppInterceptor(
        connectivityService: mockConnectivityService,
        tokenUseCase: mockTokenUseCase,
        authUseCase: mockAuthUseCase,
      );
    });

    test('onRequest - No internet connection', () async {
      when(mockConnectivityService.hasActiveConnection).thenReturn(false);

      final options = RequestOptions(path: '/test');
      try {
        await appInterceptor.onRequest(options, RequestInterceptorHandler());
      } catch (e) {
        expect(e, isA<DioException>());
        expect((e as DioException).error, 'No internet connection.');
      }
    });

    // Другие тесты для проверки onRequest и onError...

  });
}
