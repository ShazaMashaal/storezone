import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/forgot_password/components/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'components/rich_span.dart';
import 'components/title.dart';

class PinCodeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, LocaleKeys.pinCode_title.tr()),

      body: SingleChildScrollView(
        child: Form(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
              child: Column(
                children: [
                  RichSpan(text: LocaleKeys.pinCode_enterCode.tr()+" ",boldText: LocaleKeys.login_email.tr(),boldColor: Colors.black,),
                  SizedBox(height: MediaQuery.of(context).size.height/14,),
                  PinCodeTextField(
                    defaultBorderColor: Colors.grey,
                    maxLength: 4,
                    pinBoxWidth: 50,
                    pinBoxHeight: 64,
                    wrapAlignment: WrapAlignment.spaceBetween,
                    pinTextStyle: TextStyle(fontSize: 22.0),
                    highlightAnimationEndColor: Colors.brown,
                    keyboardType: TextInputType.number,


                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/20,),

                  RichSpan(text: LocaleKeys.pinCode_didntRecieveCode.tr()+" ",boldText:LocaleKeys.pinCode_resend.tr(),boldColor: Color(0xFFFD9A25),),
                  CustomButton(text: LocaleKeys.pinCode_verify.tr(),color:Color(0xFFFD9A25),textColor: Colors.white,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

