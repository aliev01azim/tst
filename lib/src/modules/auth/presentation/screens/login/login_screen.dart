// Flutter imports:
import '../../../../../infrastructure/statics/consts.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import '../../../../../infrastructure/routes/routes.dart';
import '../../../../../infrastructure/utils/extensions.dart';
import 'bloc/login_bloc.dart';
import '../../../../../infrastructure/statics/styles.dart';
import '../../../../../common/widgets/mini_btn.dart';
import '../../../../../common/widgets/text_field.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.login),
      ),
      body: SafeArea(
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.user != null) {
              context.read<LoginBloc>().add(const LoginEvent.clear());
              context.router.pushAndPopUntil(
                const HomeModuleRoute(),
                predicate: (route) => route is HomeModuleRoute,
              );
            }
          },
          listenWhen: (p, c) => c.user != null || c.error != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    'Email',
                    style:
                        TextStyles.textTitle(color: AppColors.focusedField),
                  ),
                  const SizedBox(height: 16),
                  CTextField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: AppLocalizations.of(context)!.enter_your_email,
                    validator: (p02) {
                      if (p02 != null && !p02.isValidEmail()) {
                        return AppLocalizations.of(context)!
                            .enter_your_email_correctly;
                      }
                      return null;
                    },
                    controller: _emailController,
                    onFieldSubmitted: (_) =>
                        _passwordFocusNode.requestFocus(),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    AppLocalizations.of(context)!.password,
                    style:
                        TextStyles.textTitle(color: AppColors.focusedField),
                  ),
                  const SizedBox(height: 16),
                  BlocSelector<LoginBloc, LoginState, bool>(
                    selector: (state) {
                      return !state.show;
                    },
                    builder: (context, show) {
                      return CTextField(
                        focusNode: _passwordFocusNode,
                        hintText:
                            AppLocalizations.of(context)!.enter_your_password,
                        style: TextStyles.main(color: Colors.black),
                        obscureText: show,
                        suffixIcon: InkWell(
                            onTap: () {
                              context
                                  .read<LoginBloc>()
                                  .add(const LoginEvent.hidePassword());
                            },
                            child: Icon(
                              show
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.black,
                            )),
                        validator: (p03) {
                          if (p03 != null && p03.length < 8) {
                            return AppLocalizations.of(context)!
                                .enter_at_least_characters;
                          }
                          return null;
                        },
                        controller: _passwordController,
                      );
                    },
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return MiniBtn(
                          isLoading: state.loading,
                          onTap: () async {
                            if (formKey.currentState?.validate() == true) {
                              context.read<LoginBloc>().add(
                                  LoginEvent.logging(
                                      email: _emailController.text,
                                      password: _passwordController.text));
                            }
                          },
                          text: AppLocalizations.of(context)!.next,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
