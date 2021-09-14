import 'package:flutter/material.dart';

class HomeTitles extends StatelessWidget {
  final String title;

  const HomeTitles({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Localizations.localeOf(context) == Locale('en')
            ? Alignment.centerLeft
            : Alignment.centerRight,
        child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            )));
  }
}
