import 'package:flutter/material.dart';
import 'package:storezone/views/favorite/components/favorite_circle_icon.dart';

class ItemImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network("https://m.media-amazon.com/images/I/41ROIcZjRhL._AC_.jpg"),
        Positioned.fill( child: Align(
            alignment: Alignment.topRight,

            child: Icon(Icons.share_outlined,size: 30,color: Colors.grey[600],))),
        Positioned.fill(

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CircleFavoriteIcon()),
            ))

      ],
    );
  }
}



