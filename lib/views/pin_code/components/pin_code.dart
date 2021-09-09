import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50),
        child: PinCodeTextField(
          length: 4,
          obscureText: false,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(8),
            inactiveColor:  Color(0xFFE6E5E5),
            fieldHeight: 78,
            fieldWidth: 60,
            activeFillColor:Color(0xFFE6E5E5),


          ),

        ));
  }
}
