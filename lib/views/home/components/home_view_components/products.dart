import 'package:flutter/material.dart';

import '../favorite_circle_icon.dart';

class Products extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        childAspectRatio: .8,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Card(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Image.network(
                      "https://m.media-amazon.com/images/I/61OvV27-44L._AC_SL1500_.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text("Apple Mac Pro",style: TextStyle(fontSize: 18),),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("44500",style: TextStyle(fontSize: 18),),
                              circleFavoriteIcon(
                                color: Colors.grey,
                              )
                            ])],),),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
