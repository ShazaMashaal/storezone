import 'package:flutter/material.dart';
import 'package:storezone/widgets/custom_button.dart';

class Purchase extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        CustomButton(color: Color(0xFFFFA41C),text: "Buy Now", height:18),
    CustomButton(color: Color(0xFFFFD814),text: "Add to cart",height: 18)

      ],
    );
  }
}
