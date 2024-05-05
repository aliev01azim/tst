// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../common/widgets/not_found_page.dart';
import '../../modules/auth/presentation/screens/login/login_screen.dart';
import '../../modules/home/presentation/screens/add_edit_screen.dart';
import '../../modules/home/presentation/screens/home_screen.dart';
import '../statics/bindings.dart';
import '../statics/consts.dart';

class AppRouter {
  final getPages = [
    GetPage(name: GetPages.auth, page: () => const LoginScreen()),
    GetPage(
      name: GetPages.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: GetPages.todoDetails,
      page: () => const TodoEditAddScreen(),
      transition: Transition.zoom,
    ),
  ];
  final unknowRoute =
      GetPage(name: GetPages.notFound, page: () => const UnknownRoutePage());
}
