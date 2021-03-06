import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/shared/dio_post.dart';
import 'package:storezone/views/forgot_password/states.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordStates> {
  ForgotPasswordCubit() : super(ForgotPasswordInit());

  static ForgotPasswordCubit of(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> verifyEmail(BuildContext context) async {
    if (!formKey.currentState.validate()) return;
    emit(ForgotPasswordLoading());

    final formData = {
      'email': emailController.text,
    };
    try {
      final response = await dioPost(formData,"verify-email");

      final data = response.data as Map;

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: data['status']
              ? Colors.grey.withOpacity(.4)
              : Colors.red.withOpacity(.4),
          behavior: SnackBarBehavior.floating,
          content: Text(
            data['message'],
            style: TextStyle(fontSize: 20),
          )));
      if (data['status']) {
        Navigator.pushNamed(context, pinCodeScreen,arguments: {'email':emailController.text});
      }
    } catch (e, s) {
      print(e);

      /// Dio Error 500
      print(s);

      /// Line 50 file login_view.dart
    }
    emit(ForgotPasswordInit());
  }

}


