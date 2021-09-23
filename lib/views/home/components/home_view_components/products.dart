import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';

import '../../cubit.dart';
import '../favorite_circle_icon.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller=HomeCubit.of(context);
    return  GridView.builder(
      shrinkWrap: true,
      // primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: .8,
        crossAxisCount: 2
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){Navigator.pushNamed(context, detailsScreen);},
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Image.network(
                      controller.products[index].image,
                      fit: BoxFit.fill,
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
                          "Apple Mac Pro",
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "44500",
                                style: TextStyle(fontSize: 18),
                              ),
                              CircleFavoriteIcon()
                            ])
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
