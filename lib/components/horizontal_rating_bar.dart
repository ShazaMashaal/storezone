import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HorizontalRatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 2.5,
      itemBuilder: (context, index) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemCount: 5,
      itemSize: 20.0,
      direction: Axis.horizontal,
    );
  }
}
