import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/models/user.dart';
import 'package:storezone/shared/snack_bar.dart';
import 'package:storezone/views/login/states.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInit());

  static LoginCubit of(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UserModel user;
  bool _passwordVisible = false;

  final formKey = GlobalKey<FormState>();

  Future<void> login(BuildContext context) async {
    if (!formKey.currentState.validate()) return;

    emit(LoginLoading());
    final formData =
        {'email': emailController.text, 'password': passwordController.text};
    try {
      final response = await Dio().post(baseUrl + "login",
          data: formData,
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }));
       final data = response.data  ;
       user=UserModel.fromJson(data);
      if (!user.status) {
        showSnack(context,user.message);
      } else {

        AppStorage.cashUserInfo(user,context: context);

      }
    } catch (e, s) {
      print(s);
      print(e);
    }
    emit(LoginInit());
  }
  //TODO: complete
  bool isSecured(){
    return !_passwordVisible;
  }

}



