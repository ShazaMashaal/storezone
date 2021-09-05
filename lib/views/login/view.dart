import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/login/widgets/login_form.dart';

class LoginView  extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body:ListView(
    // TODO:Use from LRTB
    padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 50),
    children: [
      Image.asset(
        amazonLogo,
        height: heightMediaQuery(context, 8),
        width: widthMediaQuery(context, 3),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: loginForm(_formKey,context),
      )
    ],
  ) ,
    );
  }
}
