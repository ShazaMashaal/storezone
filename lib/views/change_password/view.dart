import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/change_password/cubit.dart';
import 'package:storezone/views/forgot_password/components/custom_appbar.dart';
import 'package:storezone/views/change_password/components/change_password_form.dart';

class ChangePasswordView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>ChangePasswordCubit(),
      child: Scaffold(
        appBar: customAppBar(context,"Change Password"),
        body: ChangePasswordForm(),
      ),
    );
  }
}
