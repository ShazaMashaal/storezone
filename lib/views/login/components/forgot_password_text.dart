import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/register/components/text_span.dart';
import 'package:easy_localization/easy_localization.dart';
class ForgotPasswordText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Localizations.localeOf(context) == Locale('en')
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: RichText(
          text: textSpan(
              LocaleKeys.login_forgotPassword.tr(), Colors.blue,
              function: () =>
                  Navigator.pushNamed(context, forgotPasswordScreen)),
        ),
      ),
    );
  }
}
