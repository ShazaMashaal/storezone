import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/home/components/productCard.dart';


class Products extends StatelessWidget {
  final dynamic products;

  Products(this.products)
      : assert(products != null && (products is List),
            "Products != null && Products is List");

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      // primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .8, crossAxisCount: 2),
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, detailsScreen,
                arguments: {'id': products[index].id});
          },
          child:ProductCard(products[index]),
        );
      },
    );
  }
}
