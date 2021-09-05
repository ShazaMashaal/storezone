import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/strings.dart';

InkWell registerButton(context,color,text,{nextScreen, textColor,function()}) {
   return InkWell(

    onTap: (){
        if(nextScreen==null)
        Navigator.pushNamed(context, nextScreen);
        else  function();
    },
    child: Ink(

      //width: 100.0,
      height: heightMediaQuery(context, 16),
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
  );
}