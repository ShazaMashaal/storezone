import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/shared/dio_post.dart';
import 'package:storezone/shared/snack_bar.dart';
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
      final response = await dioPost(formData,"reset-password");
      final data = response.data as Map;
      if (!data['status']) {
        showSnack(context,data['message'] );
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
