import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/login/cubit.dart';
import 'package:storezone/widgets/custom_text_field.dart';
import 'package:easy_localization/easy_localization.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;

  const EmailTextField({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      label: LocaleKeys.login_email.tr(),
      controller: controller,
      validator: (email) => email.isEmpty ? "Check your email" :null ,
    );
  }
}

// bool isValidEmail(email) {
//   return RegExp(
//           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
//       .hasMatch(email);
// }
