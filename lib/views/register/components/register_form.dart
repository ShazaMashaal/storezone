import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/register/components/conditions_agreement_text.dart';
import 'package:storezone/views/register/components/register_button.dart';
import 'package:storezone/views/register/components/text_field.dart';
import 'package:easy_localization/easy_localization.dart';


Form registerForm(_formKey, context) {
  return Form(
    key: _formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textField(LocaleKeys.register_yourName.tr()),
        textField(LocaleKeys.login_email.tr()),
        textField(LocaleKeys.login_password.tr(), hintText: LocaleKeys.login_passwordHint.tr()),
        textField(LocaleKeys.register_reenterPassword.tr(), hintText: LocaleKeys.login_passwordHint.tr()),
        registerButton(context, Color(0xFFFD9A25), LocaleKeys.login_register.tr(),16,
            textColor: Colors.white,
            function:()=> Navigator.pushNamed(context,homeScreen)
        ),
        conditionAgreementText(),
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Text(
            LocaleKeys.register_alreadyHaveAccount.tr(),
            style: TextStyle(
                color: Color(
                  0xFFB2B2B2,
                ),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ),
        registerButton(context, Color(0xFFFFF6E9), LocaleKeys.login_login.tr(),16,function:()=> Navigator.pop(context),
            textColor: Color(0xFFFD9A25)),
      ],
    ),
  );
}


