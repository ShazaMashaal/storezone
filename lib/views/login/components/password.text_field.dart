import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/widgets/custom_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordTextField({Key key, this.controller}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      label:  LocaleKeys.login_password.tr(),
      hintText:LocaleKeys.login_passwordHint.tr() ,
      controller: controller,
      validator: (password){
        if(password==null||password.isEmpty)
          return 'Field is empty';
        else if(password.length<6)
          return "Password must be atleast 8 characters long";
        return null;
      }
      ,);
  }
}
