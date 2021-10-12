import 'package:flutter/material.dart';
import 'package:storezone/consts/colors.dart';

class AppBarColor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              appCyanColor,
              Color(0xFFFFC981)
            ]),

      ),
    );
  }
}
