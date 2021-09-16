import 'package:flutter/material.dart';
import 'package:storezone/views/register/components/register_button.dart';

class Purchase extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        registerButton(context, Color(0xFFFFA41C), "Buy Now", 18),
        registerButton(context, Color(0xFFFFD814), "Add to cart", 18)

      ],
    );
  }
}
