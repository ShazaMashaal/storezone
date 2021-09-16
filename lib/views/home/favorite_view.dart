import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/views/home/components/category_view_components/category_image.dart';
import 'package:storezone/views/home/components/favorite_circle_icon.dart';
import 'components/favorite_view_components/favorite_item_name.dart';
import 'components/favorite_view_components/old_and_new_price.dart';

class FavoritesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.94,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            color: Colors.white,
            elevation: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CategoryImage(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FavoriteItemName(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [OldAndNewPrice(), CircleFavoriteIcon()],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
