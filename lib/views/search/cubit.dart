import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/category_products/cubit.dart';
import 'package:storezone/views/category_products/view.dart';
import 'package:storezone/views/search/states.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInit());

  static SearchCubit of(context) => BlocProvider.of(context);

  TextEditingController searchController = TextEditingController();
  List<String> allProductsNames = [];
  List<String> result = [];

  Future<void> search(context) async {
    CategoryProductsCubit.of(context)..getCategoryProducts(context);
    allProductsNames.clear();
    CategoryProductsCubit.of(context).products.forEach((element) {
      allProductsNames.add(element.name);
    });
    print(allProductsNames);
    final value = searchController.text;
    if (value == null) return;
    emit(SearchLoading());
    result.clear();
    try {
      result.addAll(allProductsNames.where((element) => element.contains(value)));

    } catch (e, s) {
      print(e);
       print(s);
    }
    emit(SearchInit());
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
