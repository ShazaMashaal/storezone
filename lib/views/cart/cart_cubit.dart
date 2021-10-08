import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/cart/cart_model.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInit());

  static CartCubit of(context) => BlocProvider.of(context);

  List<CartItems> cartItems = [];
  int subTotal;


  Future<void> getCarItems()async{
    emit(CartLoading());
    final response = await Dio().get(baseUrl+'carts',options: Options(
        headers: {'Authorization' : AppStorage.getToken}
    ));

    final data = response.data as Map;

    CartModel cartModel = CartModel.fromJson(data);
    subTotal=cartModel.data.subTotal;
    cartItems.clear();
    print(cartModel.data.cartItems);
    cartItems.addAll(cartModel.data.cartItems);
    emit(CartInit());
  }

  Future<void> deleteFromCart(int cartItemId,context)async{
    final response = await Dio().delete(baseUrl+'carts/'+cartItemId.toString(),options: Options(
        headers: {'Authorization' : AppStorage.getToken}
    ));

    final data = response.data as Map;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red.withOpacity(.4),
        behavior: SnackBarBehavior.floating,
        content: Text(
          data['message'],
          style: TextStyle(fontSize: 20),
        )));

  }

  Future<void> changeQuantity(int cartItemId,int quantity)async{
     await Dio().put(baseUrl+'carts/'+cartItemId.toString(),data: {'quantity':quantity},options: Options(
        headers: {'Authorization' : AppStorage.getToken}
    ));

  print(cartItemId.toString());
     print(quantity.toString());

  }


}
