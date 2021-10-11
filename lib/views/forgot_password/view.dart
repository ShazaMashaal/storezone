import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/forgot_password/components/forgot_password_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'components/custom_appbar.dart';
import 'cubit.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(context, LocaleKeys.forgotPassword_title.tr()),
        body: ForgotPasswordForm(),
      ),
    );
  }
}
