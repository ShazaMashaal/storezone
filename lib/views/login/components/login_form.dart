import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
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
            textField('email'.tr().toString()),
            textField("password".tr().toString(), hintText: "passwordHint".tr().toString()),
            Align(
              alignment: Alignment.centerLeft,

              child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: RichText(
                  text: textSpan("forgotPassword".tr().toString(), Colors.blue,
                      function: () =>
                          Navigator.pushNamed(context, forgotPasswordScreen)),
                ),
              ),
            ),
            registerButton(context, Color(0xFFFD9A25), "login".tr().toString(),
                textColor: Color(0xFFFFF6E9)),
            text(
                "haveAccount".tr().toString(),
                Color(
                  0xFFB2B2B2,
                )),
            registerButton(context, Color(0xFFFFF6E9), "register".tr().toString(),
                function: () => Navigator.pushNamed(context, registerScreen),
                textColor: Color(0xFFFD9A25)),
          ]));
}

