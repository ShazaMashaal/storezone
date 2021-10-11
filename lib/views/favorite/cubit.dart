import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/shared/authorized_dio_get.dart';
import 'package:storezone/shared/dio_post.dart';
import 'package:storezone/shared/snack_bar.dart';
import 'package:storezone/views/favorite/favorite_model.dart';
import 'package:storezone/views/favorite/states.dart';


class FavoritesCubit extends Cubit<FavoritesStates> {
  FavoritesCubit() : super(FavoritesInit());

  static FavoritesCubit of(context) => BlocProvider.of(context);

  List<ProductData> products = [];


  Future<void> getFavorites()async{
    emit(FavoritesLoading());
    final response = await authorisedDioGet('favorites');
    final data = response.data as Map;
    FavoritesModel favoritesModel = FavoritesModel.fromJson(data);
    products.clear();
    products.addAll(favoritesModel.data.data);
    // Timer(Duration(seconds: 3),()=>emit(HomeInit()));
    emit(FavoritesInit());
  }
  Future<void> isFavorite(context,int productId)async{

    final response = await dioPost({"product_id":productId},'favorites');
    final data = response.data;
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
   showSnack(context,data['message'],color: Colors.grey );
  }


}

