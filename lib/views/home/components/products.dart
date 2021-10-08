import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';

import '../cubit.dart';
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
          onTap: (){Navigator.pushNamed(context, detailsScreen,arguments: {'id':products[index].id});},
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
                        child: Stack(
                          children: [
                            FadeInImage(
                              placeholder: AssetImage("assets/images/placeholder.gif"),
                              imageErrorBuilder:    (BuildContext context, Object exception, StackTrace stackTrace) {
                                return  Image.asset("assets/images/placeholder.gif");
                              },
                              image: NetworkImage( products[index].image),
                            ),

                            products[index].discount==0?Text(""): Positioned(
                                left: 0,
                                bottom: 0,
                                child: Container(
                                  width: 50,
                              height: 20,
                              color: Colors.red,
                              child: Center(child: Text("%"+products[index].discount.toString(),style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                              ),)),
                            ))
                          ],
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
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                products[index].discount==0?Text(""):  Text(
                                  "EGP: " +products[index].oldPrice.toString(),
                                  style: TextStyle(fontSize: 18,decoration: TextDecoration.lineThrough),
                                ),
                                Text(
                                 "EGP: "+ products[index].price.toString(),
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                ),

                              ]),
                          SizedBox(
                            height: 20,
                          )
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
