import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/strings.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:storezone/views/login/components/login_form.dart';

class LoginView  extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body:ListView(
    padding: EdgeInsets.fromLTRB( 30,50,30,50),
    children: [
      Image.asset(
        amazonLogo,
        height: heightMediaQuery(context, 8),
        width: widthMediaQuery(context, 3),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: loginForm(_formKey,context),
      ),
      Row(
        children: [
          RaisedButton(onPressed: (){
            setState(() {
              EasyLocalization.of(context).locale =Locale('en','EN');
            });
          },child: Text("English"),),
          RaisedButton(onPressed: (){
            setState(() {
              EasyLocalization.of(context).locale=Locale('ar','AR');
            });
          },child: Text("اللغة العربية"),),
        ],
      )
    ],
  ) ,
    );
  }
}
