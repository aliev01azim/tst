// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../../../di.dart';
import '../../app_wrapper.dart';
import '../../modules/auth/presentation/screens/login/login_screen.dart';
import '../../modules/home/domain/entities/todo.dart';
import '../../modules/home/presentation/screens/add_edit_screen.dart';
import '../../modules/home/presentation/screens/home_screen.dart';
import 'guards/auth_guard.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: AppWrapperRoute.page,
      initial: true,
      children: [
        //auth module
        AutoRoute(page: LoginRoute.page),

        //home module
        AutoRoute(
          page: HomeModuleRoute.page,
          initial: true,
          guards: [
            AuthGuard(tokenUseCase: di.tokenUseCase),
          ],
          children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: TodoEditAddRoute.page,
            ),
            
          ],
        ),
      ],
    ),
  ];
}

// final autoRouterDelegate = AutoRouterDelegate.declarative(
//   AppRouter(),
//   routes: (_) => [
//     if (HiveService.isRegistered()) const HomeRoute() else const AuthRoute(),
//   ],
// );
