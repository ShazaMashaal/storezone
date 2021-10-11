import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/models/user.dart';
import 'package:storezone/shared/dio_post.dart';
import 'package:storezone/shared/snack_bar.dart';
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
      final response = await dioPost(formData,"register");
      final data = response.data ;
      user=UserModel.fromJson(data);
      if (!user.status) {
        showSnack(context, user.message);
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
