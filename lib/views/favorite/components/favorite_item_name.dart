import 'package:flutter/material.dart';

class FavoriteItemName extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(1, 30, 0, 10),
        child: Text(
          'Apple HeadPhone with Charging Case',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
