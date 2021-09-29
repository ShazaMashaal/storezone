import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';

import '../cubit.dart';
import '../../favorite/components/favorite_circle_icon.dart';

class Products extends StatelessWidget {
  final controller;

  const Products( this.controller);

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
      itemCount: controller.products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){Navigator.pushNamed(context, detailsScreen,arguments: {'index':index});},
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
                            Image.network(
                              controller.products[index].image,
                              fit: BoxFit.fill,
                            ),
                            controller.products[index].discount==0?Text(""): Positioned(
                                left: 0,
                                bottom: 0,
                                child: Container(
                                  width: 50,
                              height: 20,
                              color: Colors.red,
                              child: Center(child: Text("%"+controller.products[index].discount.toString(),style: TextStyle(
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
                            controller.products[index].name,
                            style: TextStyle(fontSize: 15),
                            maxLines: 1,
                          ),
                          Spacer(),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                controller.products[index].discount==0?Text(""):  Text(
                                  "EGP: " +controller.products[index].oldPrice.toString(),
                                  style: TextStyle(fontSize: 18,decoration: TextDecoration.lineThrough),
                                ),
                                Text(
                                 "EGP: "+ controller.products[index].price.toString(),
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
