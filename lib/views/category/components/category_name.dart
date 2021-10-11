import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  final String name;

  const CategoryName( this.name) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      width: MediaQuery.of(context).size.width * 0.55,
      child: Text(
       name,
        style: TextStyle(
          fontSize: 18,
        ),
      ),);
  }
}
