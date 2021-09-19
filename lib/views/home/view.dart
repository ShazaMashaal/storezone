import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/cart/view.dart';
import 'package:storezone/views/home/category_view.dart';
import 'package:storezone/components/app_bar.dart';
import 'package:storezone/views/home/settings_view.dart';
import 'package:storezone/views/home/home_view.dart';
import 'package:easy_localization/easy_localization.dart';

import 'components/settings_view_components/settings_app_bar.dart';
import 'favorite_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    CategoryView(),
    FavoritesView(),
    CartView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFFD9A25),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: LocaleKeys.home_home.tr()),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: LocaleKeys.home_category.tr()),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: LocaleKeys.home_favorite.tr()),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: LocaleKeys.home_cart.tr()),

          BottomNavigationBarItem(icon: Icon(Icons.settings), label: LocaleKeys.home_settings.tr()),
        ],
      ),
      appBar:currentIndex==_widgetOptions.length-1? null : appBar(context),
      body: _widgetOptions.elementAt(currentIndex),
    );
  }
}
