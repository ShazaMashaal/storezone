import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class SettingsTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 20,vertical: MediaQuery.of(context).size.height/10),
      child: Text(LocaleKeys.settings_title.tr(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.w400),),
    );
  }
}
