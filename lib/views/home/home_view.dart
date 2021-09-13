import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/views/register/components/register_button.dart';

import 'components/home_view_discount_card.dart';
import 'components/home_view_sign_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> items = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
  ];

  ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);//the listener for up and down.
    super.initState();
  }

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {//you can do anything here
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {//you can do anything here
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: [
              Column(children: [
                Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://img.youm7.com/xlarge/202109010246394639.jpg"),
                    ))),
                Container(
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(color: Colors.grey[350], boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300].withOpacity(0.8),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, -20), // changes position of shadow
                    )
                  ]),
                ),
              ]),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.8,
                left: 0.0,
                right: 0.0,
                bottom: 5.0,
                child: Row(
                  children: [
                    SignCard(),
                    Expanded(
                      child: ListView.builder(
                        // physics: ClampingScrollPhysics(),
                        controller: _controller,//new line

                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return DiscountCard();
                        },
                      ),
                    ),
                  ],
                ),
                // child: ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: <Widget>[
                //     Container(width: 160.0, color: Colors.blue,),
                //     Container(width: 160.0, color: Colors.green,),
                //     Container(width: 160.0, color: Colors.cyan,),
                //     Container(width: 160.0, color: Colors.black,),
                //   ],
                // )
              )
            ],
          ),
        ],
      ),
    );
  }
}
