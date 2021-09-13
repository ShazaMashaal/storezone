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
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery. of(context). size. width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit. fill,
                          image: NetworkImage("https://img.youm7.com/xlarge/202109010246394639.jpg"),
                  ))),

              Container(
                padding:EdgeInsets.symmetric(horizontal: 40),
                child: Text(""),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[300],

                    boxShadow: [BoxShadow(
                    color: Colors.grey[300].withOpacity(0.8),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, -20), // changes position of shado

                  )]
                ),

              ),
                ]
              ),
              SizedBox(
                // child:ListView.builder(
                //     physics: ClampingScrollPhysics(),
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //   itemBuilder: (context, index) {
                //     return Container(
                //       height: 30,
                //       width: 30,
                //       color: Colors.white,
                //     );
                //   }
                // )
              ),
            ],
          ),
            ],

      ),
    );
  }
}
