import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import '../../favorite/components/favorite_circle_icon.dart';

class Products extends StatelessWidget {
  final dynamic products;

  Products( this.products)
      : assert(products != null && (products is List), "Products != null && Products is List");

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      shrinkWrap: true,
      // primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: .8,
        crossAxisCount: 2
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){Navigator.pushNamed(context, detailsScreen);},
          child: Card(
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
                        child: Image.network(
                          products[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            products[index].name,
                            style: TextStyle(fontSize: 15),
                            maxLines: 1,
                          ),
                          Spacer(),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  products[index].price.toString(),
                                  style: TextStyle(fontSize: 18),
                                ),
                                CircleFavoriteIcon(products[index].id, products[index].inFavorites),
                              ])
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
