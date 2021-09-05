import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
// class ShowMaterialDialog extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }


void showMaterialDialog(context) {
  showDialog(
      context: context,
      builder: (context) {
        return ListView(
          children:[ AlertDialog(
            title: Text('Material Dialog'),
            actions: <Widget>[
            PinCodeTextField(
            length: 6,
            obscureText: false,
            animationType: AnimationType.fade,
            animationDuration: Duration(milliseconds: 300),
            onChanged: (value) {
  }
          )]),
        ]);});}






