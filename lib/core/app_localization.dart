import 'package:flutter/material.dart';

class AppLocalization {
  final Locale locale;

  AppLocalization(this.locale);
  static AppLocalization of(BuildContext context){
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }
  Map<String,String> _localizationStrings;

}
