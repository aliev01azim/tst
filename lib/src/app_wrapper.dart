// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../di.dart';
import 'infrastructure/services/network/core.dart';
import 'modules/auth/presentation/screens/login/bloc/login_bloc.dart';

@RoutePage()
class AppWrapperScreen extends StatefulWidget {
  const AppWrapperScreen({
    super.key,
  });

  @override
  State<AppWrapperScreen> createState() => _AppWrapperScreenState();
}

class _AppWrapperScreenState extends State<AppWrapperScreen>
    with
        ConnectionAwareMixin<AppWrapperScreen>,
        DefaultConnectionAwareStateMixin<AppWrapperScreen>
    implements RestartableStateInterface {
  @override
  Widget buildPage(BuildContext context) {
    //Здесь можно запровайдить MultiBlocProvider
    //location блок,интернет блок для плашки к примеру тд и тп
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: BlocProvider(
          create: (context) => LoginBloc(
              authUseCase: di.authUseCase, tokenUseCase: di.tokenUseCase),
          child: const AutoRouter()),
    );
  }
}
