import 'package:flutter/material.dart';

class ItemTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          "Unisex glasses made of the basic frame with four additional tires magnetized in various colors Polarize solar lenses inside the leather bag",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ));
  }
}
