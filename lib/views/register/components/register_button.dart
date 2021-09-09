import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/strings.dart';

Padding registerButton(context,color,text,height,{nextScreen, textColor,Function function}) {
   return Padding(
     padding: const EdgeInsets.only(top:20.0),
     child: InkWell(

      onTap: function
      ,
      child: Ink(
        //width: 100.0,
        height: heightMediaQuery(context, height),
        decoration: BoxDecoration(
          color: color,
          borderRadius: formFieldsRadius,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18.0, color: textColor),
          ),
        ),
      ),
  ),
   );
}