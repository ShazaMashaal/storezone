import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/register/states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInit());

  static RegisterCubit of(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  //TODO : Create function with API endpoint , data map,state and is valid function parameters
  final formKey = GlobalKey<FormState>();

  Future<void> register(BuildContext context) async {
    if (!formKey.currentState.validate()) return;

    emit(RegisterLoading());
    final formData = {
      'name': userNameController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'phone': phoneNumberController.text
    };
    try {
      final response = await Dio().post(baseUrl + "register",
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
    emit(RegisterInit());
  }
}
