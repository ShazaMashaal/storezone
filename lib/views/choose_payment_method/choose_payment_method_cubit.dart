import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/shared/dio_post.dart';
import 'package:storezone/shared/snack_bar.dart';

part 'choose_payment_method_state.dart';

class ChoosePaymentMethodCubit extends Cubit<ChoosePaymentMethodState> {
  ChoosePaymentMethodCubit(this.addressId,this.paymentMethodId) : super(ChoosePaymentMethodInit());

  static ChoosePaymentMethodCubit of(context)=> BlocProvider.of(context);
  final int addressId;
  final int paymentMethodId;



  Future<void> addOrder(BuildContext context) async {

    emit(ChoosePaymentMethodLoading());

     final formData = {
      'address_id': addressId,
      'payment_method' :paymentMethodId,
      'use_points': false,
      'promo_code_id':0
    };
    try {
      final response = await dioPost(formData,"orders");
      final data = response.data as Map;
      if (!data['status']) {
        showSnack(context,data['message'] );
      }
      emit(ChoosePaymentMethodInit());
      Navigator.pushNamed(context, ordersScreen);
    } catch (e, s) {
      print(s);
      print(e.toString());
    }

  }

}
