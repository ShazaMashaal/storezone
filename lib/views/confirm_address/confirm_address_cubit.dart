import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/new_address/addresses_model.dart';

part 'confirm_address_state.dart';

class ConfirmAddressCubit extends Cubit<ConfirmAddressState> {
  ConfirmAddressCubit() : super(ConfirmAddressInit());

  static ConfirmAddressCubit of(context) => BlocProvider.of(context);

  List<AddressData> addresses = [];


  Future<void> getAddresses() async {

    emit(ConfirmAddressLoading());

    try {
      final response = await Dio().get(baseUrl + "addresses",
          options: Options(
              headers: {'Authorization':AppStorage.getToken},
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }));
      final data = response.data as Map;
      addresses.clear();
      AddressesModel addressesModel = AddressesModel.fromJson(data);
      addresses.addAll(addressesModel.data.data);

    } catch (e, s) {
      print(s);
      print(e);
    }
    emit(ConfirmAddressInit());
  }


  Future<void> deleteAddress(context,int addressId)async{
    try {
      addresses.removeWhere((element) => element.id == addressId);
      emit(ConfirmAddressInit());
      final response = await Dio().delete(baseUrl + "addresses/"+addressId.toString(),
          options: Options(
              headers: {'Authorization':AppStorage.getToken},
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }));
      final data = response.data as Map;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor:  Colors.grey.withOpacity(.4),

          behavior: SnackBarBehavior.floating,
          content: Text(
            data['message'],
            style: TextStyle(fontSize: 20),
          )));
    } catch (e, s) {
      print(s);
      print(e);
    }
  }

}
