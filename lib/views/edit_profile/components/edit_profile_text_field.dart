import 'package:flutter/material.dart';

import '../cubit.dart';

class EditProfileTextField extends StatelessWidget {
  final BoxConstraints constraints;

  final String label;

  final Color color;

  final String initValue;

  final TextEditingController controller;

  const EditProfileTextField(
      {Key key,
      this.constraints,
      this.label,
      this.color,
      this.initValue, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth / 1.25,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: 25,
              fontWeight: FontWeight.bold),
          suffixIcon: Icon(Icons.close,color: color,),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color, width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color, width: 3),
          ),
        ),
        style: TextStyle(color: color, fontSize: 20),
        initialValue: initValue,
      ),
    );
  }
}
