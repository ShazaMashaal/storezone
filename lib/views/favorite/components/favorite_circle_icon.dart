import 'package:flutter/material.dart';
import 'package:storezone/models/home.dart';

class CircleFavoriteIcon extends StatefulWidget {
  // bool isFavorite = false;
final int index ;
final controller;
  const CircleFavoriteIcon(this.index, this.controller);

  @override
  _CircleFavoriteIconState createState() => _CircleFavoriteIconState();
}
bool isFavorite = false;


class _CircleFavoriteIconState extends State<CircleFavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    return  IconButton(
        padding: EdgeInsets.zero,
        icon:CircleAvatar(
            backgroundColor: isFavorite ? Color(0xFFFD9A25) : Colors.grey,
            radius: 17,child: Icon(Icons.favorite_border,color: Colors.white,)),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
            widget.controller.isFavorite(context,widget.controller.products[widget.index].id);
          });
        },
      );
  }
}
