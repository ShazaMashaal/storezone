import 'package:flutter/material.dart';

class HomeListViewBackGround extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5.5,
      width: double.infinity,
      decoration:
      BoxDecoration(color: Colors.grey[350], boxShadow: [
        BoxShadow(
          color: Colors.grey[300].withOpacity(0.8),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, -20), // changes position of shadow
        )
      ]),
    );
  }
}
