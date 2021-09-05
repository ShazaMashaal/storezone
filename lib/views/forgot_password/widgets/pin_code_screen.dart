import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

pinCodeDialog(context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)))));
}
