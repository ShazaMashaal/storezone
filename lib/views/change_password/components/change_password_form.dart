import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/change_password/cubit.dart';
import 'package:storezone/views/login/components/password.text_field.dart';
import 'package:storezone/widgets/custom_text_field.dart';
import 'package:easy_localization/easy_localization.dart';

import 'change_pasword_button.dart';
class ChangePasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller=ChangePasswordCubit.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
      child: Form(
        key: controller.formKey,
          child: SingleChildScrollView(
        child: Column(children: [
          PasswordTextField(
            controller: controller.passwordController,),
          CustomTextField(
            obscureText: true,
            controller: controller.newPasswordController,
            label: LocaleKeys.changePassword_newPassword.tr(),
          ),
          CustomTextField(
            obscureText: true,
            controller: controller.confirmNewPasswordController,
            hintText:LocaleKeys.changePassword_confirmNewPasswordHint.tr() ,
            label: LocaleKeys.changePassword_confirmNewPassword.tr(),
            validator: (confirmation)=>confirmation.isEmpty||confirmation!=controller.newPasswordController.text?"Doesn't Match Password":null,
          ),
          ChangePasswordButton()

        ]),
      )),
    );
  }
}
