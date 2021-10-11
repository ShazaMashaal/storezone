import 'package:flutter/material.dart';

void showSnack(context,String text,{Color color=Colors.red}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color.withOpacity(.4),
      behavior: SnackBarBehavior.floating,
      content: Text(
        text,
        style: TextStyle(fontSize: 20),
      )));
}