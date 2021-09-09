import 'package:flutter/material.dart';

class AppBarColor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xFFFD9A25),
              Color(0xFFFFC981)
            ]),

      ),
    );
  }
}
