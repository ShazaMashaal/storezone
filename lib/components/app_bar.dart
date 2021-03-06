import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/components/app_bar_search.dart';
import 'package:storezone/views/bottom_navigation_bar/components/app_bar_color.dart';

AppBar appBar(context){
  return  AppBar(
    toolbarHeight: heightMediaQuery(context, 11),

    flexibleSpace:AppBarColor(),
    title:  AppBarSearch(),
    );
}