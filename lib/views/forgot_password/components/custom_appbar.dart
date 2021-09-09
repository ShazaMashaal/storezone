
import 'package:flutter/material.dart';
import 'package:storezone/components/langDropDownButton.dart';

AppBar customAppBar(BuildContext context,title) {
  return AppBar(
    centerTitle: true,
    leading: InkWell(child: Icon(Icons.arrow_back,color: Colors.black,),onTap:()=> Navigator.pop(context),),
    title: Text(title,style: TextStyle(color: Colors.black),) ,
    backgroundColor:Colors.white ,
    elevation: 0,
    actions: [LangDropDownButton()],
  );
}