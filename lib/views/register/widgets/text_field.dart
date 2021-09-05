import 'package:flutter/material.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/styles.dart';

Column textField(String label, {String hintText}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("   $label", style: labelStyle),
      SizedBox(
        height: 10,
      ),
      TextField(
        style: TextStyle(fontSize: 20),
        cursorColor: Colors.black,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintTextColor,
            // contentPadding: EdgeInsets.all( 15.0),

            filled: true,
            fillColor: Color(0xFFF3F5F7),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: formFieldsRadius)),
      ),
    ],
  );
}
