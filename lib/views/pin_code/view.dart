import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class PinCodeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      body: Center(
        child: PinCodeTextField(
          autofocus: true,
          controller: controller,
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
      ),
    );
  }
}

