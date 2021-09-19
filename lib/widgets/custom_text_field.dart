import 'package:flutter/material.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;

  final String Function(String) validator;

  final String hintText;
  final TextEditingController controller;

  final TextInputType keyboardType;

  final bool obscureText;

  const CustomTextField(
      {Key key,
      this.label,
      this.hintText,
      this.validator,
      this.controller,
      this.keyboardType,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("   $label", style: labelStyle),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            obscureText: obscureText,
            keyboardType: keyboardType,
            controller: controller,
            validator: validator,
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
      ),
    );
  }
}
