import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:storezone/components/langDropDownButton.dart';

AppBar langAppBar() {
  return AppBar(

    toolbarHeight: 40,
    elevation: 1,
     actions:[LangDropDownButton(),],

    backgroundColor: Colors.white,
  );
}
