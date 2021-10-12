import 'package:flutter/material.dart';

class DeliveryPrice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "EGP 21.00 delivery: ",
          style: TextStyle(color: Color(0xFF0885B4),fontSize: 16),
        ),
        Text("Sept. 20 - 21 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
        Text(
          "Details",
          style: TextStyle(color: Color(0xFF0885B4),fontSize: 16),
        ),

      ],
    );
  }
}
