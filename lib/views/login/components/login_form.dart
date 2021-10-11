import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/login/components/login_text.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:storezone/widgets/custom_text_field.dart';
import 'package:storezone/views/register/components/text_span.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:storezone/views/login/components/email_text_field.dart';
import 'package:storezone/views/login/components/password.text_field.dart';

import '../cubit.dart';
import 'forgot_password_text.dart';
import 'login_button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = LoginCubit.of(context);

    return Form(
        key: controller.formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EmailTextField(controller:controller.emailController),
              PasswordTextField(controller: controller.passwordController,),
              //TODO: Show And Hide Password
              ForgotPasswordText(),
              LoginButton(),
              text(
                  LocaleKeys.login_haveAccount.tr(),
                  Color(
                    0xFFB2B2B2,
                  )),
              CustomButton(
                  color: Color(0xFFFFF6E9),
                  text: LocaleKeys.login_register.tr(),
                  function: () => Navigator.pushNamed(context, registerScreen),
                  textColor: appOrangeColor),
            ]));
  }
}
