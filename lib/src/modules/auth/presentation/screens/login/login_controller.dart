import 'package:get/get.dart';

import '../../../../home/domain/usecases/todos_usecase.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/auth_usecase.dart';
import '../../../domain/usecases/token_usecase.dart';

class LoginController extends GetxController {
  LoginController({required this.authUseCase, required this.tokenUseCase, required this.todosUseCase});
  final AuthUseCase authUseCase;
  final TokenUseCase tokenUseCase;
  final TodosUseCase todosUseCase;
  bool show = false;
  bool loading = false;
  String? error;
  UserModel? user;

  Future<void> logIn({required String email, required String password}) async {
    loading = true;
    error = null;
    update();

    final result =
        await authUseCase.loginUser(email: email, password: password);
    print('1');
    await result.fold(
      (l) async {
        print('2');
        error = l.error;
        loading = false;
      },
      (r) async {
        await tokenUseCase.saveToken(r.token);
        print('3');
        user = r.user;
        loading = false;
      },
    );
    update();
  }

  void hidePassword() {
    show = !show;
    update();
  }

  void clear() async {
    error = null;
    loading = false;
    user = null;
    show = false;
    update();
  }

  Future<void> logOut() async {
    await authUseCase.logOut();
      await todosUseCase.clearCache();

    clear();
  }
}
