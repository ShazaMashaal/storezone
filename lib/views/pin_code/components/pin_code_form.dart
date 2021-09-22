import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/pin_code/components/pin_code.dart';
import 'package:storezone/views/pin_code/components/rich_span.dart';
import 'package:storezone/views/pin_code/components/verify_pin_code_button.dart';
import 'package:storezone/views/pin_code/cubit.dart';
import 'package:easy_localization/easy_localization.dart';
class PinCodeForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller=PinCodeCubit.of(context);
    return SingleChildScrollView(
      child: Form(
        key: controller.formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
            child: Column(
              children: [
                RichSpan(text: LocaleKeys.pinCode_enterCode.tr()+" ",boldText: LocaleKeys.login_email.tr(),boldColor: Colors.black,),
                SizedBox(height: MediaQuery.of(context).size.height/14,),
                PinCode(),
                SizedBox(height: MediaQuery.of(context).size.height/20,),

                RichSpan(text: LocaleKeys.pinCode_didntRecieveCode.tr()+" ",boldText:LocaleKeys.pinCode_resend.tr(),boldColor: Color(0xFFFD9A25),),
                VerifyPinCodeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
