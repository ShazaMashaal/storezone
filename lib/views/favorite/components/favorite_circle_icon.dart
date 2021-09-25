import 'package:flutter/material.dart';

class CircleFavoriteIcon extends StatefulWidget {
  // bool isFavorite = false;

//TODO: why response is slower when putting isFavorite

  @override
  _CircleFavoriteIconState createState() => _CircleFavoriteIconState();
}
bool isFavorite = false;

//TODO: Here

class _CircleFavoriteIconState extends State<CircleFavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isFavorite ? Color(0xFFFD9A25) : Colors.grey,
      radius: 17,
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(Icons.favorite_border),
        color: Colors.white,
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
