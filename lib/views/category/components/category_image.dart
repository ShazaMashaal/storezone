import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
//TODO: Try Shimmer
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.3,
          maxHeight: MediaQuery.of(context).size.width * 0.3,
        ),
        child: Image.network(
          "https://previews.123rf.com/images/yupiramos/yupiramos1501/yupiramos150102152/35448844-gadgets-tech-design-vector-illustration-eps10-graphic.jpg",
          fit: BoxFit.fill,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
