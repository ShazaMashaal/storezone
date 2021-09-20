import 'package:flutter/material.dart';

Padding text(String text, Color color) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize:20),
    ),
  );
}
