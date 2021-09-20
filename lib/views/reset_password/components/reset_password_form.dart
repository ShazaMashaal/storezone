import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/forgot_password/components/reset_button.dart';
import 'package:storezone/views/login/components/email_text_field.dart';
import 'package:storezone/views/login/components/login_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:storezone/widgets/custom_text_field.dart';
class ResetPasswordForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
          child: Column(
            children: [
              text(
                  LocaleKeys.resetPassword_instructions.tr(),
                  Color(
                    0xFF898989,
                  )),

              CustomTextField(obscureText: true,label: LocaleKeys.resetPassword_newPassword.tr(),),
              CustomTextField(obscureText: true,label: LocaleKeys.resetPassword_confirmNewPassword.tr(),),
              SizedBox(height: 30,),
              CustomButton(color: Color(0xFFFD9A25),text: "Save",textColor: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}
