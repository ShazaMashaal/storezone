import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/forgot_password/components/custom_appbar.dart';
import 'package:storezone/views/register/components/register_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'components/pin_code.dart';
import 'components/rich_span.dart';
import 'components/title.dart';

class PinCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, LocaleKeys.pinCode_title.tr()),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30),

            RichSpan(text: LocaleKeys.pinCode_enterCode.tr(),boldColor: Colors.black,boldText:" "+LocaleKeys.login_email.tr(),),
            SizedBox(
              height: 20,
            ),
            PinCode(),
            SizedBox(
              height: 20,
            ),
            RichSpan(text:LocaleKeys.pinCode_didntRecieveCode.tr(),boldColor:  Color(0xFFFD9A25),boldText:" " +LocaleKeys.pinCode_resend.tr(),),


            SizedBox(
              height: 14,
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
              child: registerButton(context, Color(0xFFFD9A25), LocaleKeys.pinCode_verify.tr(),16,
                  textColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
