// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

// Project imports:
import 'src/infrastructure/routes/routes.dart';
import 'src/infrastructure/services/network/connection_service.dart';
import 'src/infrastructure/services/network/dio.dart';
import 'src/modules/auth/data/data_sources/auth_data_source.dart';
import 'src/modules/auth/data/data_sources/auth_data_source_impl.dart';
import 'src/modules/auth/data/repositories/auth_repository.dart';
import 'src/modules/auth/data/repositories/auth_repository_impl.dart';
import 'src/modules/auth/domain/usecases/auth_usecase.dart';
import 'src/modules/auth/domain/usecases/token_usecase.dart';
import 'src/modules/home/data/data_sources/todos_data_source.dart';
import 'src/modules/home/data/data_sources/todos_data_source_impl.dart';
import 'src/modules/home/data/repositories/todos_repository.dart';
import 'src/modules/home/data/repositories/todos_repository_impl.dart';
import 'src/modules/home/domain/usecases/todos_usecase.dart';

final di = DIContainer();

class DIContainer {
  Future<void> initDependencies() async {
    connectivityService = await ConnectivityService(Connectivity()).init();
    dioConfig = DioConfig();
    _authDataSource = AuthDataSourceImpl(dioConfig.dio);
    _authRepository = AuthRepositoryImpl(_authDataSource);
    authUseCase = AuthUseCase(_authRepository);
    _postsDataSourceImpl = TodosDataSourceImpl(dioConfig.dio);
    _postsRepository = TodosRepositoryImpl(_postsDataSourceImpl);
    postsUseCase = TodosUseCase(_postsRepository);
    tokenUseCase = TokenUseCase(_authRepository);

    appRouter = AppRouter();

    //вызывается в конце (чтобы сначала проинициализировались необходимые зависимости)
    dioConfig.setupDio(
      connectivityService: connectivityService,
      tokenUseCase: tokenUseCase,
      authUseCase: authUseCase,
    );
  }

  //  dio + interceptor + проверка на интернет
  late final ConnectivityService connectivityService;
  late final DioConfig dioConfig;

  //appRouter для использования в app.dart и в interceptor при 401
  late final AppRouter appRouter;


  // остальные зависимости
  late final AuthDataSource _authDataSource;
  late final AuthRepository _authRepository;
  late final AuthUseCase authUseCase;
  late final TodosDataSource _postsDataSourceImpl;
  late final TodosRepository _postsRepository;
  late final TodosUseCase postsUseCase;
  late final TokenUseCase tokenUseCase;
}
