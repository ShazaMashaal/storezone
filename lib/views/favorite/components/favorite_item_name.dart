import 'package:flutter/material.dart';

class FavoriteItemName extends StatelessWidget {
  final String name;

  const FavoriteItemName( this.name) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(1, 30, 0, 10),
        child: Text(
          name,
          maxLines: 4,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
