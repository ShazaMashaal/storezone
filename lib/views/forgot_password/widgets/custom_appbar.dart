
import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context,title) {
  return AppBar(
    leading: InkWell(child: Icon(Icons.arrow_back,color: Colors.black,),onTap:()=> Navigator.pop(context),),
    title:Center(child: Text(title,style: TextStyle(color: Colors.black),)) ,
    backgroundColor:Colors.white ,
    elevation: 0,
  );
}