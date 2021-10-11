import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/shared/dio_post.dart';
import 'package:storezone/shared/snack_bar.dart';
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
      final response = await dioPost(formData, "addresses");
      final data = response.data as Map;
      AddressesModel addressesModel = AddressesModel.fromJson(data);
      if (!addressesModel.status) {
        showSnack(context, data['message']);
      }
    } catch (e, s) {
      print(s);
      print(e);
    }
    emit(AddressInit());
  }

}
