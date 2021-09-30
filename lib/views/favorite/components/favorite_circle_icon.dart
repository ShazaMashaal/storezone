import 'package:flutter/material.dart';
import 'package:storezone/views/home/cubit.dart';

class CircleFavoriteIcon extends StatefulWidget {
  final bool isFavorite;
  final int id ;
  const CircleFavoriteIcon(this.id, this.isFavorite);

  @override
  _CircleFavoriteIconState createState() => _CircleFavoriteIconState();
}

class _CircleFavoriteIconState extends State<CircleFavoriteIcon> {

  bool isFavorite = false;

  @override
  void initState(){
    super.initState();
    isFavorite = widget.isFavorite;
  }

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
            HomeCubit().isFavorite(context, widget.id);
          });
        },
      );
  }
}
