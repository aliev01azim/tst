// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AppWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppWrapperScreen(),
      );
    },
    HomeModuleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeModuleScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    TodoEditAddRoute.name: (routeData) {
      final args = routeData.argsAs<TodoEditAddRouteArgs>(
          orElse: () => const TodoEditAddRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TodoEditAddScreen(
          key: args.key,
          item: args.item,
        ),
      );
    },
  };
}

/// generated route for
/// [AppWrapperScreen]
class AppWrapperRoute extends PageRouteInfo<void> {
  const AppWrapperRoute({List<PageRouteInfo>? children})
      : super(
          AppWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeModuleScreen]
class HomeModuleRoute extends PageRouteInfo<void> {
  const HomeModuleRoute({List<PageRouteInfo>? children})
      : super(
          HomeModuleRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeModuleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TodoEditAddScreen]
class TodoEditAddRoute extends PageRouteInfo<TodoEditAddRouteArgs> {
  TodoEditAddRoute({
    Key? key,
    TodoModel? item,
    List<PageRouteInfo>? children,
  }) : super(
          TodoEditAddRoute.name,
          args: TodoEditAddRouteArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'TodoEditAddRoute';

  static const PageInfo<TodoEditAddRouteArgs> page =
      PageInfo<TodoEditAddRouteArgs>(name);
}

class TodoEditAddRouteArgs {
  const TodoEditAddRouteArgs({
    this.key,
    this.item,
  });

  final Key? key;

  final TodoModel? item;

  @override
  String toString() {
    return 'TodoEditAddRouteArgs{key: $key, item: $item}';
  }
}
