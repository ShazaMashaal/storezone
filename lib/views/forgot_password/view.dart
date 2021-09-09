import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/login/components/login_text.dart';
import 'package:storezone/views/register/components/register_button.dart';
import 'package:storezone/views/register/components/text_field.dart';
import 'package:easy_localization/easy_localization.dart';

import 'components/custom_appbar.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context, LocaleKeys.forgotPassword_title.tr()),
      body: Center(
        child: ListView(
          padding: EdgeInsets.fromLTRB(30,50,30,50),
          children: [
            text(
                LocaleKeys.forgotPassword_confirmEmail.tr(),
                Color(
                  0xFF898989,
                )),
            textField(LocaleKeys.login_email.tr()),
            registerButton(context, Color(0xFFFD9A25),
                LocaleKeys.forgotPassword_resetPassword.tr(),16,
                textColor: Colors.white,
                function: () => Navigator.pushNamed(context,pinCodeScreen))
          ],
        ),
      ),
    );
  }
}
