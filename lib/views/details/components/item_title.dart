import 'package:flutter/material.dart';

class ItemTitle extends StatelessWidget {
  final String name;

  const ItemTitle( this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ));
  }
}
