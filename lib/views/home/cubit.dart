import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/home/home_model.dart';
import 'package:storezone/views/home/states.dart';


class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInit());


  static HomeCubit of(context) => BlocProvider.of(context);

  List<Banners> banners = [];
  List<Products> products = [];


  Future<void> getData()async{
    emit(HomeLoading());
    final response = await Dio().get(baseUrl+'home', options: Options(headers: {
      if(AppStorage.isLogged)
      'Authorization': AppStorage.getToken,
    }));
    print(AppStorage.getToken);
    final data = response.data as Map;
    HomeModel home = HomeModel.fromJson(data);
    banners.clear();
    products.clear();
    banners.addAll(home.data.banners);
    products.addAll(home.data.products);
    // Timer(Duration(seconds: 3),()=>emit(HomeInit()));
    emit(HomeInit());
  }



}

