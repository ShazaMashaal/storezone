import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../forgot_password/components/custom_appbar.dart';
import 'components/reset_password_form.dart';

class ResetPasswordView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context,LocaleKeys.resetPassword_title.tr()),
      body: SingleChildScrollView(
        child: ResetPasswordForm()
      ),
    );
  }
}
