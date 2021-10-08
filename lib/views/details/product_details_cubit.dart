import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/details/product_details_model.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.id) : super(ProductDetailsInit());

  final int id;

  static ProductDetailsCubit of(context) => BlocProvider.of(context);

  ProductDetailsModel productDetails;

  Future<void> getProductDetails() async{
    emit(ProductDetailsLoading());
    final response = await Dio().get(baseUrl+'products/'+id.toString(),options:
    Options(
      headers: {'Authorization' :AppStorage.getToken},
      contentType: 'application/json',
    ));
    final data = response.data as Map;
    productDetails = ProductDetailsModel.fromJson(data);
    print(productDetails.data);
    emit(ProductDetailsInit());
  }
  Future<void> addAndDeleteCartItems(context,int productId)async{
    emit(ProductDetailsLoading());
    final response = await Dio().post(baseUrl+'carts',data: {"product_id":productId},options: Options(
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
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor:Colors.grey.withOpacity(.4),
        behavior: SnackBarBehavior.floating,
        content: Text(
          data['message'],
          style: TextStyle(fontSize: 20),
        )));
    emit(ProductDetailsInit());

  }

}
