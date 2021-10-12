import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/shared/snack_bar.dart';

part 'complaints_state.dart';

class ComplaintsCubit extends Cubit<ComplaintsState> {
  ComplaintsCubit() : super(ComplaintsInit());

  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  static ComplaintsCubit of(context) => BlocProvider.of(context);

  Future<void> sendComplaint(context) async {
    emit(ComplaintsLoading());
    if (!formKey.currentState.validate()) return;

    final formData = {
      "name": nameController.text,
      "phone": phoneController.text,
      "email": emailController.text,
      "message": messageController.text
    };
    try {
      final response = await Dio().post(baseUrl+"/complaints",
          data: formData,
          options: Options(
            followRedirects: false,
            validateStatus: (status) {
              return status < 500;
            },
            contentType: 'application/json',
          ));
      final data = response.data as Map;
      if (!data['status'])
        showSnack(context, data['message'], color: Colors.grey);
      else
        showSnack(context, data['message']);

      emit(ComplaintsInit());
    } catch (e, s) {
      print(e);
      print(s);
    }
  }
}