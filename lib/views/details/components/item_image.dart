import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:storezone/shared/fade_image_handle_error.dart';
import 'package:storezone/views/favorite/components/favorite_circle_icon.dart';

import '../product_details_cubit.dart';

class ItemImage extends StatelessWidget {


  const ItemImage() ;
  @override
  Widget build(BuildContext context) {
    final productDetails=ProductDetailsCubit.of(context).productDetails.data;
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            autoPlay: false,
          ),
          items: productDetails.images.map((e) => Container(child: Center(child: FadeImageHandleError(e),),)).toList(),
        ),
        productDetails.discount==0?Text(""):Positioned(
            left: 10,
            top: 10,
            child:CircleAvatar(
              radius: 27,
              backgroundColor: Color(0xFFAF1D13),
              child: Center(child: Text(productDetails.discount.toString()+"% \n off",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
            )
        ),

        Positioned(
            right: 10,
            top: 10,
            child:MaterialButton(
              elevation: 0,
              onPressed: () {},
              color: Colors.white70,
              child: Icon(
                Icons.share_outlined,
                size: 30,
                color: Colors.grey,
              ),
              padding: EdgeInsets.all(5),
              shape: CircleBorder(),
            )
        ),
        Positioned(
            left: 10,
            bottom: 10,
            child: CircleFavoriteIcon(productDetails.id,productDetails.inFavorites))

      ],
    );
  }
}



