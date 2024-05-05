// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:code_demo/di.dart';

void main() {
  group('DI Container', () {
    late DIContainer diContainer;

    setUp(() {
      diContainer = DIContainer();
    });

    test('Checking all dependencies', () async {
      await diContainer.initDependencies();
      expect(diContainer.connectivityService, isNotNull);
      expect(diContainer.authUseCase, isNotNull);
      expect(diContainer.postsUseCase, isNotNull);
      expect(diContainer.tokenUseCase, isNotNull);
      expect(diContainer.appRouter, isNotNull);
      expect(diContainer.dioConfig, isNotNull);
      expect(diContainer.dioConfig.dio.interceptors, isNotEmpty);
    });
  });
}
