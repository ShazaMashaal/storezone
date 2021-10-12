import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/shared/authorized_dio_get.dart';
import 'package:storezone/shared/dio_get.dart';
import 'package:storezone/shared/snack_bar.dart';

import 'orders_model.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(OrdersInit());
  
  static OrdersCubit of(context)=>BlocProvider.of(context);
  
  List<Order> orders=[];


  Future<void> getOrders()async{
    emit(OrdersLoading());
    try{
    final response=await authorisedDioGet("orders");
    final data = response.data as Map;
    orders.clear();
    OrdersModel ordersModel=OrdersModel.fromJson(data);

        orders.addAll(ordersModel.data.data);
    emit(OrdersInit());
    }catch(e,s){
      print(s);
      print(e);
    }
  }
//TODO : exception when pressing cancel order

  Future<void> cancelOrder(int orderId,context) async{
    emit(OrdersInit());
    final response = await authorisedDioGet("orders/$orderId/cancel");
    final data = response.data as Map;
    await getOrders();
    emit(OrdersInit());
    showSnack(context, data['message'],color: Colors.grey);
  }
}
