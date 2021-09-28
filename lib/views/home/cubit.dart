import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
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
    HomeModel home = HomeModel.fromJson(data);
    banners.clear();
    products.clear();
    print(home.data.banners);
    banners.addAll(home.data.banners);
    products.addAll(home.data.products);
    // Timer(Duration(seconds: 3),()=>emit(HomeInit()));
    emit(HomeInit());
  }


  Future<void> isFavorite(context,int productId)async{
    final response = await Dio().post(baseUrl+'favorites',data: {"product_id":productId},options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return status < 500;
        },
      contentType: 'application/json',
      headers: {
        'Authorization':AppStorage.getToken}
    ));
    final data = response.data;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: data['status']
            ? Colors.grey.withOpacity(.4)
            : Colors.red.withOpacity(.4),
        behavior: SnackBarBehavior.floating,
        content: Text(
          data['message'],
          style: TextStyle(fontSize: 20),
        )));
  }
}

