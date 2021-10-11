import 'package:flutter/material.dart';
import 'package:storezone/shared/fade_image_handle_error.dart';
import 'package:storezone/views/home/components/product_name_price.dart';

import 'discount.dart';

class ProductCard extends StatelessWidget {
final  product;

  const ProductCard( this.product);
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Stack(
                    children: [
                      FadeImageHandleError(product.image),
                      Discount(product)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ProductNameAndPrice(product),
            ),
          ],
        ),
      ),
    );
  }
}
