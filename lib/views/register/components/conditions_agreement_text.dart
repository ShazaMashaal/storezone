import 'package:flutter/material.dart';
import 'package:storezone/views/register/components/text_span.dart';

Padding conditionAgreementText() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 15),
        children: [
          textSpan("By continuing, you agree to Amazon's", Colors.black),
          textSpan(" Conditions of use", Colors.blue),
          textSpan(" and", Colors.black),
          textSpan(" Privacy Notice", Colors.blue),
        ],
      ),
    ),
  );
}