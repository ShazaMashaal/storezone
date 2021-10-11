import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/shared/dio_post.dart';
import 'package:storezone/shared/snack_bar.dart';
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
    {'email': email, 'code': pinCodeController.text};
    try {
      final response = await dioPost(formData,"verify-code");
      final data = response.data as Map;
      if (!data['status']) {
        showSnack(context, data['message']);
      } else {
        Navigator.pushNamed(context, resetPasswordScreen,arguments: {'email': email, 'code': pinCodeController.text});
      }
    } catch (e, s) {
      print(s);
      print(e);
    }
    emit(PinCodeInit());

  }


}

