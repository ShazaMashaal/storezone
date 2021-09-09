import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/login/components/login_form.dart';
import 'package:storezone/widgets/langAppBar.dart';

class LoginView  extends StatelessWidget {


  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          appBar: langAppBar(),
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
      ],
  ) ,
      ),
    );
  }
}
