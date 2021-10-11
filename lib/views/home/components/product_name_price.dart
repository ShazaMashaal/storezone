import 'package:flutter/material.dart';
import 'package:storezone/views/category_products/category_products_model.dart';

class ProductNameAndPrice extends StatelessWidget {
  final  product;

  const ProductNameAndPrice(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              product.name,
              style: TextStyle(fontSize: 15),
              maxLines: 1,
            ),
            Spacer(),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  product.discount == 0
                      ? Text("")
                      : Text(
                          "EGP: " + product.oldPrice.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              decoration: TextDecoration.lineThrough),
                        ),
                  Text(
                    "EGP: " + product.price.toString(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ]),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
