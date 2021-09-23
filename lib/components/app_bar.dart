import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/components/app_bar_search.dart';

import '../views/home/components/app_bar_color.dart';

AppBar appBar(context){
  return  AppBar(
    toolbarHeight: heightMediaQuery(context, 11),
    //TODO ; REMOVE THIS LEADING
    //
    /*

     */
    /// note
    flexibleSpace:AppBarColor(),
    title:  AppBarSearch(),
    );
}