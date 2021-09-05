import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

TextSpan textSpan(text,color,{nextScreen,Function function}) {
  return TextSpan(
    text: text,
    style:  TextStyle(color: color),
      recognizer: TapGestureRecognizer()
        ..onTap = function);

}