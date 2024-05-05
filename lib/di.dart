// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

// Project imports:
import 'src/common/apis/apis.dart';
import 'src/infrastructure/routes/routes.dart';
import 'src/infrastructure/services/network/connection_service.dart';
import 'src/infrastructure/services/network/dio.dart';
import 'src/modules/auth/data/data_sources/auth_data_source_impl.dart';
import 'src/modules/auth/data/repositories/auth_repository_impl.dart';
import 'src/modules/auth/domain/usecases/auth_usecase.dart';
import 'src/modules/auth/domain/usecases/token_usecase.dart';
import 'src/modules/home/data/data_sources/todos_data_source_impl.dart';
import 'src/modules/home/data/repositories/todos_repository_impl.dart';
import 'src/modules/home/domain/usecases/todos_usecase.dart';

Future<void> initDependencies() async {
  final connectivityService = await Get.putAsync<ConnectivityService>(
      () async => await ConnectivityService(Connectivity()).init(),
      permanent: true);
  final _dioConfig = Get.put<DioConfig>(DioConfig());
  final restClient=Get.put<RestClient>(RestClient(_dioConfig.dio));
  final authDataSourceImpl =
      Get.put<AuthDataSourceImpl>(AuthDataSourceImpl(restClient));
  final authRepositoryImpl =
      Get.put<AuthRepositoryImpl>(AuthRepositoryImpl(authDataSourceImpl));
  final authUseCase = Get.put<AuthUseCase>(AuthUseCase(authRepositoryImpl));
  final todosDataSourceImpl =
      Get.put<TodosDataSourceImpl>(TodosDataSourceImpl(restClient));
  final todosRepositoryImpl =
      Get.put<TodosRepositoryImpl>(TodosRepositoryImpl(todosDataSourceImpl));
  Get.put<TodosUseCase>(TodosUseCase(todosRepositoryImpl));
  final tokenUseCase = Get.put<TokenUseCase>(TokenUseCase(authRepositoryImpl));
  Get.put<AppRouter>(AppRouter());

  _dioConfig.setupDio(
    connectivityService: connectivityService,
    tokenUseCase: tokenUseCase,
    authUseCase: authUseCase,
  );
  await tokenUseCase.getAccessToken();
}
