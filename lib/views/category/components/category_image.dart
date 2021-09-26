import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/category/components/states.dart';

import '../cubit.dart';

class CategoryImage extends StatelessWidget {
final String image;
CategoryImage(this.image);
//TODO: Try Shimmer
  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.all(5.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.3,
            maxHeight: MediaQuery.of(context).size.width * 0.3,
          ),
          child: FadeInImage( //TODO: this
            placeholder: AssetImage("assets/images/placeholder.gif"),
            imageErrorBuilder:    (BuildContext context, Object exception, StackTrace stackTrace) {
            return  Image.asset("assets/images/placeholder.gif");
          },
            //TODO:ابعت ال image من برة
            image: NetworkImage(image),
          ),
          //TODO: connectivity check internet ..... and refresh screen
//TODO: what is the difference between the two fadeInImage
          // child: FadeInImage.assetNetwork( //TODO: and This
          //     placeholder: 'assets/images/placeholder.gif',
          //     image: controller.categories[index].image,
          //   imageErrorBuilder: ,
          // ),
        ),
    );
  }
}
