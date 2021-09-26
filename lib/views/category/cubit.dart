import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/category/categories_model.dart';

import 'components/states.dart';


class CategoriesCubit extends Cubit<CategoriesStates> {
  CategoriesCubit() : super(CategoriesInit());

  static CategoriesCubit of(context) => BlocProvider.of(context);

  List<CategoriesData> categories = [];


  Future<void> getCategories()async{
    emit(CategoriesLoading());
    final response = await Dio().get(baseUrl+'categories');
    final data = response.data as Map;
    CategoriesModel category = CategoriesModel.fromJson(data);
    print(category.data.data);
    categories.clear();
    categories.addAll(category.data.data);
    emit(CategoriesInit());
  }


}

