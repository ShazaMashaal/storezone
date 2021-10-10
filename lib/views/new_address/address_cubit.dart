import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/new_address/addresses_model.dart';

part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit() : super(AddressInit());

  static AddressCubit of(context) => BlocProvider.of(context);


  TextEditingController addressName = TextEditingController();
  TextEditingController addressCity = TextEditingController();
  TextEditingController addressRegion = TextEditingController();
  TextEditingController addressDetails = TextEditingController();
  TextEditingController addressNotes = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> addNewAddress(context) async {
    if (!formKey.currentState.validate()) return;

    emit(AddressLoading());
    final formData = {
      'name': addressName.text,
      'city': addressCity.text,
      'region': addressRegion.text,
      'details': addressDetails.text,
      "latitude": 0,
      "longitude": 0,
      'notes': addressNotes.text
    };
    try {
      final response = await Dio().post(baseUrl + "addresses",
          data: formData,
          options: Options(
            headers: {'Authorization':AppStorage.getToken},
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }));
      final data = response.data as Map;
      AddressesModel addressesModel = AddressesModel.fromJson(data);
      if (!addressesModel.status) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red.withOpacity(.4),
            behavior: SnackBarBehavior.floating,
            content: Text(
              data['message'],
              style: TextStyle(fontSize: 20),
            )));
      }
    } catch (e, s) {
      print(s);
      print(e);
    }
    emit(AddressInit());
  }

}
