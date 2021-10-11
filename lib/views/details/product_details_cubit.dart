import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/shared/authorized_dio_get.dart';
import 'package:storezone/shared/dio_post.dart';
import 'package:storezone/shared/snack_bar.dart';
import 'package:storezone/views/details/product_details_model.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.id) : super(ProductDetailsInit());

  final int id;

  static ProductDetailsCubit of(context) => BlocProvider.of(context);

  ProductDetailsModel productDetails;

  Future<void> getProductDetails() async{
    emit(ProductDetailsLoading());
    final response = await authorisedDioGet('products/'+id.toString());
    final data = response.data as Map;
    productDetails = ProductDetailsModel.fromJson(data);
    print(productDetails.data);
    emit(ProductDetailsInit());
  }
  Future<void> addAndDeleteCartItems(context,int productId)async{
    emit(ProductDetailsLoading());
    final response = await dioPost({"product_id":productId}, 'carts');
    final data = response.data;
    print(productId);
    //TODO: delay in displaying and hiding
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    showSnack(context,data['message'] ,color: Colors.grey);

    emit(ProductDetailsInit());

  }

}
