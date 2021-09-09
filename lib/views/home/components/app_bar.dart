import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/views/home/components/app_bar_search.dart';

import 'app_bar_color.dart';

AppBar appBar(context){
  return  AppBar(
    toolbarHeight: heightMediaQuery(context, 11),
      automaticallyImplyLeading: false,
    flexibleSpace:AppBarColor(),
    title:  AppBarSearch(),

    );

}