import 'package:flutter/material.dart';

CircularProgressIndicator progressIndicator() {
  return CircularProgressIndicator(
    backgroundColor: Color(0xFFFDAC54),
    valueColor:AlwaysStoppedAnimation<Color>(Colors.white) ,
  );
}