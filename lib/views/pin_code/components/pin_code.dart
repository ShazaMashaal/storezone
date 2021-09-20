import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class PinCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      pinBoxBorderWidth: 1,
      defaultBorderColor: Colors.grey,
      hasTextBorderColor: Colors.orangeAccent,
      maxLength: 4,
      autofocus: true,
      pinBoxColor: Colors.grey[200],
      pinTextStyle: TextStyle(fontSize: 22.0),
      keyboardType: TextInputType.number,
      pinBoxRadius: 10,
      pinBoxHeight: MediaQuery.of(context).size.height/11,
      pinBoxOuterPadding: EdgeInsets.all(10),
    );
  }
}
