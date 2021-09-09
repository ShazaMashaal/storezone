import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/register/components/text_span.dart';
import 'package:easy_localization/easy_localization.dart';


Padding conditionAgreementText() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 15),
        children: [
          textSpan(LocaleKeys.register_continue.tr(), Colors.black),
          textSpan(" "+LocaleKeys.register_conditions.tr(), Colors.blue),
          textSpan(" "+LocaleKeys.register_and.tr(), Colors.black),
          textSpan(" "+LocaleKeys.register_privacy.tr(), Colors.blue),
        ],
      ),
    ),
  );
}