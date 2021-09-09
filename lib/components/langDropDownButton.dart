import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';


class LangDropDownButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButton<String>(
        underline: SizedBox(),

        icon: Icon(
          Icons.public,
          color: Colors.grey,
        ),
        items: <String>['English', 'Arabic'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged:
            (newValue) async{

          if    (newValue=="English"){
            await context.setLocale(Locale('en'));
          }else if    (newValue=="Arabic"){
            await context.setLocale(Locale('ar'));
          }

        },
      ),
    );
  }
}
