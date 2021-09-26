import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/models/user.dart';
import 'package:storezone/views/register/states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  UserModel user;

  RegisterCubit() : super(RegisterInit());

  static RegisterCubit of(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

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
      final data = response.data ;
      user=UserModel.fromJson(data);
      if (!user.status) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red.withOpacity(.4),
            behavior: SnackBarBehavior.floating,
            content: Text(
              user.message,
              style: TextStyle(fontSize: 20),
            )));
      } else {
        AppStorage.cashUserInfo(user,context: context);

        Navigator.pushNamed(context, homeScreen);
      }
    } catch (e, s) {
      print(s);
      print(e.toString());
    }
    emit(RegisterInit());
  }
}
