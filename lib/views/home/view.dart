import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/bottom_navigation_bar/components/home_banner.dart';
import 'package:storezone/views/home/components/home_list_view_background.dart';
import 'components/categories_list.dart';
import 'components/home_titles.dart';
import 'components/home_view_discount_card.dart';
import 'components/home_view_sign_card.dart';
import 'components/products.dart';
import 'cubit.dart';
import 'states.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();

}


class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>HomeCubit()..getData(),
      child: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) => state is HomeLoading?Center(child: CircularProgressIndicator()):  SingleChildScrollView(
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
                              if (index == 0 && !AppStorage.isLogged()) return SignCard();
                              return DiscountCard();
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // Button(),

              HomeTitles(title: "Categories"),
              CategoriesList(),
              HomeTitles(title: "Products"),
              Products()
            ],
          ),
        ),
      ),
    );
  }
}
