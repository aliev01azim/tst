// Flutter imports:
import 'package:get/get.dart';

import '../../../../../infrastructure/statics/consts.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../../infrastructure/routes/routes.dart';
import '../../../../../infrastructure/utils/extensions.dart';
import '../../../../../infrastructure/statics/styles.dart';
import '../../../../../common/widgets/mini_btn.dart';
import '../../../../../common/widgets/text_field.dart';
import '../../../../home/presentation/screens/home_screen.dart';
import 'login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginController = Get.find<LoginController>();
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
        title: Text('login'.tr),
      ),
      body: SafeArea(
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
                  style: TextStyles.textTitle(color: AppColors.focusedField),
                ),
                const SizedBox(height: 16),
                CTextField(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'enter_your_email'.tr,
                  validator: (p02) {
                    if (p02 != null && !GetUtils.isEmail(p02)) {
                      return 'enter_your_email_correctly'.tr;
                    }
                    return null;
                  },
                  controller: _emailController,
                  onFieldSubmitted: (_) => _passwordFocusNode.requestFocus(),
                ),
                const SizedBox(height: 24),
                Text(
                  'password'.tr,
                  style: TextStyles.textTitle(color: AppColors.focusedField),
                ),
                const SizedBox(height: 16),
                GetBuilder<LoginController>(
                  builder: (c) {
                    return CTextField(
                      focusNode: _passwordFocusNode,
                      hintText: 'enter_your_password'.tr,
                      style: TextStyles.main(color: Colors.black),
                      obscureText: !c.show,
                      suffixIcon: InkWell(
                          onTap: () {
                            _loginController.hidePassword();
                          },
                          child: Icon(
                            !c.show
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.black,
                          )),
                      validator: (p03) {
                        if (p03 != null && p03.length < 8) {
                          return 'enter_at_least_characters'.tr;
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
                  child: GetBuilder<LoginController>(
                    builder: (state) {
                      return MiniBtn(
                        isLoading: state.loading,
                        onTap: () async {
                          if (formKey.currentState?.validate() == true) {
                            await _loginController.logIn(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                            if (state.user != null) {
                              _loginController.clear();
                              Get.offAllNamed(
                                GetPages.home,
                                predicate: (route) => route is HomeScreen,
                              );
                            }
                          }
                        },
                        text: 'next'.tr,
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
    );
  }
}
