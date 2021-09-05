import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/register/components/register_button.dart';
import 'package:storezone/views/register/components/text_field.dart';
import 'package:storezone/views/register/components/text_span.dart';

Form loginForm(_formKey, context) {
  return Form(
      key: _formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textField("Email"),
            textField("Password", hintText: "At least 6 characters"),
            RichText(
              text: textSpan("   Forgot Password ?", Colors.blue,
                  function:()=> Navigator.pushNamed(context,forgotPasswordScreen)),
            ),
            registerButton(context, Color(0xFFFD9A25), "Login",
                textColor: Color(0xFFFFF6E9)),
            Text(
              "   Don't have an account ?",
              style: TextStyle(
                  color: Color(
                    0xFFB2B2B2,
                  ),
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            registerButton(context, Color(0xFFFFF6E9), "Register",
                function:()=> Navigator.pushNamed(context, registerScreen), textColor: Color(0xFFFD9A25)),
          ]));
}
