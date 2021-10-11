import 'package:flutter/material.dart';

class FadeImageHandleError extends StatelessWidget {
final String image;

  const FadeImageHandleError(this.image);
  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      placeholder: AssetImage("assets/images/placeholder.gif"),
      imageErrorBuilder:    (BuildContext context, Object exception, StackTrace stackTrace) {
        return  Image.asset("assets/images/placeholder.gif");
      },
      image: NetworkImage(image),
    );
  }
}
