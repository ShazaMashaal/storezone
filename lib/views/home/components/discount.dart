import 'package:flutter/material.dart';
import 'package:storezone/views/category_products/category_products_model.dart';

class Discount extends StatelessWidget {
final  product;

  const Discount(this.product);
  @override
  Widget build(BuildContext context) {
    return product.discount == 0
        ? Text("")
        : Positioned(
        left: 0,
        bottom: 0,
        child: Container(
          width: 50,
          height: 20,
          color: Colors.red,
          child: Center(
              child: Text(
                "%" +
                    product.discount.toString(),
                style: TextStyle(
                    fontSize: 15, color: Colors.white),
              )),
        ));
  }
}
