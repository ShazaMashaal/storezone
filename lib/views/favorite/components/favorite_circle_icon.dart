import 'package:flutter/material.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/views/favorite/cubit.dart';

class CircleFavoriteIcon extends StatefulWidget {
  final bool isFavorite;
  final int id;

  const CircleFavoriteIcon(this.id, this.isFavorite);

  @override
  _CircleFavoriteIconState createState() => _CircleFavoriteIconState();
}

class _CircleFavoriteIconState extends State<CircleFavoriteIcon> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
          FavoritesCubit().isFavorite(context, widget.id);
        });
      },
      color: isFavorite ? appOrangeColor : Colors.white70,
      child: Icon(
        Icons.favorite_border,
        size: 30,
        color: isFavorite ? Colors.white : Colors.grey,
      ),
      padding: EdgeInsets.all(5),
      shape: CircleBorder(),
    );
  }
}
