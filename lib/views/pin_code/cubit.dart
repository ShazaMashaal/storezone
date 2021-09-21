import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/login/states.dart';
import 'package:storezone/views/pin_code/states.dart';


class PinCodeCubit extends Cubit<PinCodeStates> {
  PinCodeCubit(this.email) : super(PinCodeInit());

  final String email;

  static PinCodeCubit of(context) => BlocProvider.of(context);

  TextEditingController pinCodeController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> verifyCode(BuildContext context) async {
    if (!formKey.currentState.validate()) return;

    emit(PinCodeLoading());
    final formData =
    {'email': email, 'pinCode': pinCodeController.text};
    try {
      final response = await Dio().post(baseUrl + "verify-code",
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
            content: Text(data['message'],style: TextStyle(fontSize: 20),)));
      } else {
        Navigator.pushNamed(context, resetPasswordScreen,arguments: {});
      }
    } catch (e, s) {
      print(s);
      print(e);
    }
    emit(PinCodeInit());

  }


}

