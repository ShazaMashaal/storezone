import 'package:flutter/material.dart';
// class  extends StatefulWidget {
//
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }


circleFavoriteIcon( {Color color}) {
//TODO: change color (setState????)
    return GestureDetector(
      onTap:(){ if(color==Color(0xFFFD9A25))
        color=Colors.grey;
      else
        color=Color(0xFFFD9A25);
      print(color);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: color,
            // backgroundColor: Color(0xFFFD9A25),

          ),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          )
        ],
      ),
    );
  }

