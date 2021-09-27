import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/models/home.dart';
import 'package:storezone/views/change_password/states.dart';
import 'package:storezone/views/home/states.dart';


class ChangePasswordCubit extends Cubit<ChangePasswordStates> {

  ChangePasswordCubit() : super(ChangePasswordInit());

  static ChangePasswordCubit of(context) => BlocProvider.of(context);

  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();



  Future<void> changePassword(BuildContext context)async{
    if (!formKey.currentState.validate()) return;

    emit(ChangePasswordLoading());
    final formData =
    {'current_password': passwordController.text, 'new_password': newPasswordController.text};
    try{
    final response = await Dio().post(baseUrl+'change-password',data: formData,options: Options(
      headers: {'Authorization':AppStorage.getToken},
        followRedirects: false,
        validateStatus: (status) {
          return status < 500;
        }
    ));
    final data = response.data as Map;
    if (!data['status']) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: data['status']
              ? Colors.grey.withOpacity(.4)
              : Colors.red.withOpacity(.4),
          behavior: SnackBarBehavior.floating,
          content: Text(
            data['message'],
            style: TextStyle(fontSize: 20),
          )));
    } else {
      Navigator.pushNamed(context, homeScreen);
    }
    }catch(e,s){
      print(e);
      print(s);

    }
    emit(ChangePasswordInit());
  }


}

