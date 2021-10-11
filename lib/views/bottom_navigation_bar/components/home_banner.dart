
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:storezone/views/home/cubit.dart';

class HomeBanner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller=HomeCubit.of(context);

    return Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
          items: controller.banners
              .map((item) => Center(child: Image.network(item.image.toString(),fit: BoxFit.cover,)))
              .toList(),
        ));
  }
}
