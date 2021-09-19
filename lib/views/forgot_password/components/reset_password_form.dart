import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/forgot_password/components/reset_button.dart';
import 'package:storezone/views/login/components/email_text_field.dart';
import 'package:storezone/views/login/components/login_text.dart';
import 'package:easy_localization/easy_localization.dart';
import '../cubit.dart';

class ResetPasswordForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller=ForgotPasswordCubit.of(context);
    return Form(
      key: controller.formKey,
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
          child: Column(
            children: [
              text(
                  LocaleKeys.forgotPassword_confirmEmail.tr(),
                  Color(
                    0xFF898989,
                  )),
              EmailTextField(controller: controller.emailController,),
              SizedBox(height: 30,),
              ResetButton()
            ],
          ),
        ),
      ),
    );
  }
}
