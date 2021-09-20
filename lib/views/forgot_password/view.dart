import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/forgot_password/components/forgot_password_form.dart';
import 'package:storezone/views/forgot_password/states.dart';
import 'package:storezone/views/login/components/email_text_field.dart';
import 'package:storezone/views/login/components/login_text.dart';
import 'package:storezone/views/pin_code/view.dart';
import 'package:storezone/widgets/custom_button.dart';
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
