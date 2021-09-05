import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/register/widgets/register_button.dart';
import 'package:storezone/views/register/widgets/text_field.dart';
import 'package:storezone/views/register/widgets/text_span.dart';

Form registerForm(_formKey, context) {
  return Form(
    key: _formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textField("Your name"),
        textField("Email"),
        textField("Password", hintText: "At least 6 characters"),
        textField("Re-enter password", hintText: "At least 6 characters"),
        registerButton(context, Color(0xFFFD9A25), "Register",
            textColor: Colors.white),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 15),
            children: [
              textSpan(context,"By continuing, you agree to Amazon's", Colors.black),
              textSpan(context,"Conditions of use", Colors.blue),
              textSpan(context,"and", Colors.black),
              textSpan(context,"Privacy Notice", Colors.blue),
            ],
          ),
        ),
        Text(
          "Already have an account",
          style: TextStyle(
              color: Color(
                0xFFB2B2B2,
              ),
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
        registerButton(context, Color(0xFFFFF6E9), "Sign in",nextScreen:  loginScreen,
            textColor: Color(0xFFFD9A25)),
      ],
    ),
  );
}
