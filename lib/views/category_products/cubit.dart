import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/shared/snack_bar.dart';
import 'package:storezone/views/category_products/category_products_model.dart';
import 'package:storezone/views/category_products/states.dart';

class CategoryProductsCubit extends Cubit<CategoryProductsStates> {
  CategoryProductsCubit(this.id) : super(CategoryProductsInit());

  final int id;

  static CategoryProductsCubit of(context) => BlocProvider.of(context);

  List<ProductData> products=[];

  Future<void> getCategoryProducts(BuildContext context) async {
    emit(CategoryProductsLoading());

    try {
      final response = await Dio().get(baseUrl + "categories/" + id.toString(),
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }));

      final data = response.data as Map;
      CategoryProductsModel categoryProducts =
      CategoryProductsModel.fromJson(data);
      products.clear();
      print(categoryProducts.data.data);
      print(id);
      products.addAll(categoryProducts.data.data);
      if (categoryProducts.status != null && !categoryProducts.status) {
       showSnack(context,data['message'] ) ;

      }
    } catch (e, s) {
      print(s);
      print(e);
    }
    emit(CategoryProductsInit());

  }


}