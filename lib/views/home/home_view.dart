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
                child: Row(
                  children: [
                    Flexible(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) return SignCard();
                          return DiscountCard();
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          HomeTitles(title: "Categories"),
          CategoriesList(),
          HomeTitles(title: "Products"),
          Products()
        ],
      ),
    );
  }
}
