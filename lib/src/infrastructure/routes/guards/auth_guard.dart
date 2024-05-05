// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import '../routes.dart';
import '../../../modules/auth/domain/usecases/token_usecase.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.tokenUseCase});
  final TokenUseCase tokenUseCase;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if ((await tokenUseCase.getAccessToken()) != null) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}
