import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/models/home.dart';
import 'package:storezone/shared/snack_bar.dart';
import 'package:storezone/views/favorite/favorite_model.dart';
import 'package:storezone/views/favorite/states.dart';
import 'package:storezone/views/home/states.dart';


class FavoritesCubit extends Cubit<FavoritesStates> {
  FavoritesCubit() : super(FavoritesInit());

  static FavoritesCubit of(context) => BlocProvider.of(context);

  List<ProductData> products = [];


  Future<void> getFavorites()async{
    emit(FavoritesLoading());
    final response = await Dio().get(baseUrl+'favorites',options: Options(
      headers: {'Authorization' : AppStorage.getToken}
    ));
    final data = response.data as Map;
    FavoritesModel favoritesModel = FavoritesModel.fromJson(data);
    products.clear();
    print(favoritesModel.data.data);
    products.addAll(favoritesModel.data.data);
    // Timer(Duration(seconds: 3),()=>emit(HomeInit()));
    emit(FavoritesInit());
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
    //TODO: delay in displaying and hiding
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
   showSnack(context,data['message'],color: Colors.grey );
  }


}

