import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      width: MediaQuery.of(context).size.width * 0.55,
      child: Text(
        'electronic devices',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
