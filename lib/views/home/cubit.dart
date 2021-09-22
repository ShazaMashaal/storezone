import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/models/banner.dart';
import 'package:storezone/views/home/states.dart';


class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInit());

  static HomeCubit of(context) => BlocProvider.of(context);



  Future<List<Banners>> getBanners()async{
    emit(HomeLoading());
    final response = await Dio().get(baseUrl+'home');
    final data = response.data['data']['banners'];

    print(data);
    List<Banners> dartList = [];

    data.forEach((element) {
      dartList.add(Banners.fromJson(element));
    });

    // Timer(Duration(seconds: 3),()=>emit(HomeInit()));
    emit(HomeInit());
    return dartList;
  }


}

