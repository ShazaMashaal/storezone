import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/views/register/components/register_button.dart';

class HomeView extends StatelessWidget {
  final List<String> items = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 250,
            width: MediaQuery. of(context). size. width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit. fill,
                  image: NetworkImage("https://img.youm7.com/xlarge/202109010246394639.jpg"),
          ))),
          SizedBox(height: 50,),
          Container(
            padding:EdgeInsets.symmetric(horizontal: 40),
            child: Text("Categories",textAlign: TextAlign.start,),
          )
            ],
      ),
    );
  }
}
