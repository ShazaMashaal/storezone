import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

TextSpan textSpan(context,text,color,{nextScreen}) {
  return TextSpan(
    text: text,
    style:  TextStyle(color: color),
      recognizer: TapGestureRecognizer()
        ..onTap = () => Navigator.pushNamed(context, nextScreen));

}