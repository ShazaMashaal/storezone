import 'package:flutter/material.dart';
import 'package:storezone/views/product_details/product_details_cubit.dart';

class ItemPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productDetails=ProductDetailsCubit.of(context).productDetails.data;
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          productDetails.discount==0?Text(""):price("Was: ",productDetails.oldPrice+0.0,lineThrough: TextDecoration.lineThrough,color: Colors.grey),
          price("Price: ",productDetails.price+0.0),
          productDetails.discount==0?Text(""): price("You Save: ",productDetails.oldPrice+0.0-productDetails.price+0.0),
          Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("	All prices include VAT.",
                  style: TextStyle(fontSize: 16)))
        ],
      ),
    );
  }

  Padding price(String title,double price,{lineThrough,color=const Color(0xFFB12704)}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Text(title, style: TextStyle(color: Colors.grey, fontSize: 16)),
          Column(
            children: [
              Text(
               price.toString(),
                style: TextStyle(color: color, fontSize: 18,decoration: lineThrough),
              ),

            ],
          )
        ],
      ),
    );
  }
}
