import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/strings.dart';

import 'components/register_form.dart';

class RegisterView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 50),
          children: [
            Image.asset(
              amazonLogo,
              height: heightMediaQuery(context, 8),
              width: widthMediaQuery(context, 3),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: registerForm(_formKey,context),
            )
          ],
        ),
      ),
    );
  }
}
