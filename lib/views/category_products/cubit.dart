import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/category_products/category_products_model.dart';
import 'package:storezone/views/category_products/states.dart';
import 'package:storezone/views/category_products/view.dart';
import 'package:storezone/views/login/states.dart';
import 'package:storezone/views/pin_code/states.dart';


class CategoryProductsCubit extends Cubit<CategoryProductsStates> {
  CategoryProductsCubit(this.id) : super(CategoryProductsInit());

  final String id;

  static CategoryProductsCubit of(context) => BlocProvider.of(context);

List<ProductData> products;

  Future<void> getCategoryProducts(BuildContext context) async {

    emit(CategoryProductsLoading());

    try {
      final response = await Dio().get(baseUrl + "categories/"+id,
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }));
      final data = response.data as Map;
      CategoryProductsModel categoryProductsModel=CategoryProductsModel.fromJson(data);
      products.clear();
      products.addAll(categoryProductsModel.data.data);
      if (!data['status']) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red.withOpacity(.4),
            behavior: SnackBarBehavior.floating,
            content: Text(data['message'],style: TextStyle(fontSize: 20),)));
      }
    } catch (e, s) {
      print(s);
      print(e);
    }
    emit(CategoryProductsInit());

  }


}

