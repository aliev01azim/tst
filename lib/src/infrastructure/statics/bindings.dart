import 'package:get/get.dart';

import '../../modules/auth/domain/usecases/auth_usecase.dart';
import '../../modules/auth/domain/usecases/token_usecase.dart';
import '../../modules/auth/presentation/screens/login/login_controller.dart';
import '../../modules/home/domain/usecases/todos_usecase.dart';
import '../../modules/home/presentation/screens/todos_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodosController(todosUseCase: Get.find<TodosUseCase>()));
  }
}

class AuthBinding implements Bindings {
  @override
  void dependencies() async {
    Get.put(LoginController(
      todosUseCase: Get.find<TodosUseCase>(),
      authUseCase: Get.find<AuthUseCase>(),
      tokenUseCase: Get.find<TokenUseCase>(),
    ));
  }
}
