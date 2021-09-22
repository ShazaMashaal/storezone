import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/register/states.dart';
import 'package:storezone/views/reset_password/states.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordStates> {
  ResetPasswordCubit(this.email, this.pinCode) : super(ResetPasswordInit());

  final String email;
  final String pinCode;

  static ResetPasswordCubit of(context) => BlocProvider.of(context);

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> resetPassword(BuildContext context) async {
    if (!formKey.currentState.validate()) return;

    emit(ResetPasswordLoading());
    final formData = {
      'email': email,
      'code' :pinCode,
      'password': passwordController.text,
    };
    try {
      final response = await Dio().post(baseUrl + "reset-password",
          data: formData,
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }));
      final data = response.data as Map;
      if (!data['status']) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red.withOpacity(.4),
            behavior: SnackBarBehavior.floating,
            content: Text(
              data['message'],
              style: TextStyle(fontSize: 20),
            )));
      } else {
        Navigator.pushNamed(context, homeScreen);
      }
    } catch (e, s) {
      print(s);
      print(e.toString());
    }
    emit(ResetPasswordInit());
  }
}
