import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/shared/authorized_dio_get.dart';
import 'package:storezone/shared/snack_bar.dart';
import 'package:storezone/views/cart/cart_model.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInit());

  static CartCubit of(context) => BlocProvider.of(context);

  List<CartItems> cartItems = [];
  bool subTotalUpdated=true;
  int subTotal;


  Future<void> getCarItems()async{
    emit(CartLoading());
    final response = await authorisedDioGet( 'carts');

    final data = response.data as Map;

    CartModel cartModel = CartModel.fromJson(data);
    subTotal=cartModel.data.subTotal;
    cartItems.clear();
    print(cartModel.data.cartItems);
    cartItems.addAll(cartModel.data.cartItems);
    emit(CartInit());
  }

  Future<void> deleteFromCart(int cartItemId,context)async{
    cartItems.removeWhere((element) => element.id==cartItemId);
    emit(CartInit());
    final response = await Dio().delete(baseUrl+'carts/'+cartItemId.toString(),options: Options(
        headers: {'Authorization' : AppStorage.getToken}
    ));

    final data = response.data as Map;
    showSnack(context, data['message'],color: Colors.grey);

  }

  Future<void> changeQuantity(int cartItemId,int quantity)async{
    subTotalUpdated=false;
    emit(CartInit());
     final response = await Dio().put(baseUrl+'carts/'+cartItemId.toString(),data: {'quantity':quantity},options: Options(
        headers: {'Authorization' : AppStorage.getToken}
    ));

     subTotal = response.data['data']['total'];
     subTotalUpdated=true;
     emit(CartInit());
  }


}
