import 'package:flutter/material.dart';

class OldAndNewPrice extends StatelessWidget {
final  double oldPrice;
final double price;

  const OldAndNewPrice( this.oldPrice, this.price) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/3.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            oldPrice.toString(),
            style: TextStyle(
              color: Color(0xFFFD9A25),
              fontSize: 18,
            ),
          ),
          Text(
            price.toString(),
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
