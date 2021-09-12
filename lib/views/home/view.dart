import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/views/home/category_view.dart';
import 'package:storezone/views/home/components/app_bar.dart';
import 'package:storezone/views/home/settings_view.dart';
import 'package:storezone/views/home/home_view.dart';

import 'favorite_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex=0;

    List<Widget> _widgetOptions = <Widget>[
    HomeView(),
      CategoryView(),
      FavoritesView(), SettingsView()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFFD9A25),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value){
          currentIndex=value;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
        ],
      ),
      appBar: appBar(context),
      body:_widgetOptions.elementAt(currentIndex),
    );
  }
}
