import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/models/user.dart';
import 'package:storezone/shared/dio_post.dart';
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
      final response = await dioPost(formData, "login");
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



