import 'package:flutter/material.dart';
import 'package:storezone/shared/fade_image_handle_error.dart';


class CategoryImage extends StatelessWidget {
final String image;
CategoryImage(this.image);
  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.all(5.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.3,
            maxHeight: MediaQuery.of(context).size.width * 0.3,
          ),
          child: FadeImageHandleError(image),
          //TODO: connectivity check internet ..... and refresh screen

        ),
    );
  }
}
