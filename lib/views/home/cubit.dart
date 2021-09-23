import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/models/home.dart';
import 'package:storezone/views/home/states.dart';


class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInit());

  static HomeCubit of(context) => BlocProvider.of(context);

  List<Banners> banners = [];
  List<Products> products = [];


  Future<void> getData()async{
    emit(HomeLoading());
    final response = await Dio().get(baseUrl+'home');
    final data = response.data as Map;
    Home home = Home.fromJson(data);
    banners.clear();
    products.clear();
    banners.addAll(home.data.banners);
    products.addAll(home.data.products);
    // Timer(Duration(seconds: 3),()=>emit(HomeInit()));
    emit(HomeInit());
  }


}

