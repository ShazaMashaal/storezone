import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/cart/view.dart';
import 'package:storezone/views/category/view.dart';
import 'package:storezone/views/home/view.dart';
import 'package:storezone/components/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:storezone/views/settings/view.dart';
import 'components/custom_drawer.dart';
import '../favorite/view.dart';

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
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: appCyanColor,
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
