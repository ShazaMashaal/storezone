
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/models/banner.dart';
import 'package:storezone/views/home/cubit.dart';
import 'package:storezone/views/home/states.dart';

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
//TODO : HOW TO READ MODEl
//TODO:HOW TO REACH TO ANY NESTED PROPERTY IN IT