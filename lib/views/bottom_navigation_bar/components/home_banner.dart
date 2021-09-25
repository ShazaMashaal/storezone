
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/models/banner.dart';
import 'package:storezone/views/home/cubit.dart';
import 'package:storezone/views/home/states.dart';

class HomeBanner extends StatelessWidget {
  Banners banners;

  @override
  Widget build(BuildContext context) {
    final controller=HomeCubit.of(context);
   // Future <List<Banners>> banners=controller.getBanners();
   // print(banners);
    return Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://img.youm7.com/xlarge/202109010246394639.jpg"),
            )));
  }
}

//TODO : HOW TO READ MODEl
//TODO:HOW TO REACH TO ANY NESTED PROPERTY IN IT