import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:storezone/views/forgot_password/cubit.dart';
import 'package:storezone/views/forgot_password/states.dart';

import 'components/rich_span.dart';
import 'components/title.dart';

class PinCodeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ForgotPasswordCubit.of(context),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              // key: controller.formKey,
              child: Column(
                children: [
                  PinCodeTitle(),
                  SizedBox(height: MediaQuery.of(context).size.height/10,),
                  PinCodeTextField(
                    autofocus: true,
                    // controller: controller.pinCodeController,
                    hideCharacter: true,
                    highlightColor: Colors.blue,
                    defaultBorderColor: Colors.grey,
                    hasTextBorderColor: Colors.black,
                    highlightPinBoxColor: Colors.grey,
                    maxLength: 4,
                    pinBoxWidth: 50,
                    pinBoxHeight: 64,
                    wrapAlignment: WrapAlignment.spaceAround,
                    pinBoxDecoration:
                    ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                    pinTextStyle: TextStyle(fontSize: 22.0),
                    pinTextAnimatedSwitcherTransition:
                    ProvidedPinBoxTextAnimation.scalingTransition,
                    pinTextAnimatedSwitcherDuration:
                    Duration(milliseconds: 300),
                    highlightAnimationBeginColor: Colors.black,
                    highlightAnimationEndColor: Colors.white12,
                    keyboardType: TextInputType.number,


                  ),
                  RichSpan(text: "ghdfhfg",boldText:"dsfdsf",boldColor: Colors.black,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

