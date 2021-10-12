import 'package:flutter/material.dart';
import 'package:storezone/consts/colors.dart';

class NewPrice extends StatelessWidget {
final double price;

  const NewPrice(  this.price) ;
  @override
  Widget build(BuildContext context) {
    return Text(
      "EGP: "+price.toString(),
      style: TextStyle(
          fontSize: 18,color: appCyanColor
      ),
    );
  }
}
