import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/login/components/login_text.dart';
import 'package:storezone/views/register/components/register_button.dart';
import 'package:storezone/views/register/components/text_field.dart';
import 'package:storezone/views/register/components/text_span.dart';
import 'package:easy_localization/easy_localization.dart';

Form loginForm(_formKey, context) {
  return Form(
      key: _formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textField(LocaleKeys.login_email.tr()),
            textField(LocaleKeys.login_password.tr(), hintText: LocaleKeys.login_passwordHint.tr()),
            Align(
              alignment: Alignment.centerLeft,

              child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: RichText(
                  text: textSpan(LocaleKeys.login_forgotPassword.tr(), Colors.blue,
                      function: () =>
                          Navigator.pushNamed(context, forgotPasswordScreen)),
                ),
              ),
            ),
            registerButton(context, Color(0xFFFD9A25), LocaleKeys.login_login.tr(),16,function:()=> Navigator.pushNamed(context, homeScreen),
                textColor: Color(0xFFFFF6E9)),
            text(
                LocaleKeys.login_haveAccount.tr(),
                Color(
                  0xFFB2B2B2,
                )),
            registerButton(context, Color(0xFFFFF6E9), LocaleKeys.login_register.tr(),16,
                function: () => Navigator.pushNamed(context, registerScreen),
                textColor: Color(0xFFFD9A25)),
          ]));
}

