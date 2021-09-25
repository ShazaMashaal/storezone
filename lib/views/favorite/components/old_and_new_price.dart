import 'package:flutter/material.dart';

class OldAndNewPrice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/3.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            "11499",
            style: TextStyle(
              color: Color(0xFFFD9A25),
              fontSize: 18,
            ),
          ),
          Text(
            "11499",
            style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 18,color: Colors.grey
            ),
          ),
        ],
      ),
    );
  }
}
