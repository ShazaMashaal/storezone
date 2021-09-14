import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/views/home/components/home_banner.dart';
import 'package:storezone/views/home/components/home_list_view_background.dart';
import 'package:storezone/views/home/components/home_view_components/home_titles.dart';
import 'components/home_view_components/categories_list.dart';
import 'components/home_view_components/products.dart';
import 'components/home_view_discount_card.dart';
import 'components/home_view_sign_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    List x = [1,2,3,3];

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: [
              Column(children: [
                HomeBanner(),
                HomeListViewBackGround(),
              ]),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.8,
                left: 0.0,
                right: 0.0,
                bottom: 5.0,
                // child: SingleChildScrollView(
                //   physics: ScrollPhysics(),
                //   scrollDirection: Axis.horizontal,
                child: ListView.builder(
                  // shrinkWrap: true,
                  // physics: ClampingScrollPhysics(),
                  itemCount: x.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    if(index == 0)
                      return SignCard();
                    // return Text(x[index - 1].toString());
                    return DiscountCard();
                  },
                ),
                //TODO: make the first container scrollable
                // Expanded(
                //   child:,
                //   flex: ,
                // ),
                // Flexible(
                //   fit: FlexFit.loose,
                // ),
                // ),
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
          HomeTitles(title: "Categories"),
          CategoriesList(),

          HomeTitles(title: "Products"),
          //TODO: alternate GridView.count to GridView.builder and adjust spacing between items

          //TODO : the difference between flexible and expanded
          Products()
        ],
      ),
    );
  }
}
