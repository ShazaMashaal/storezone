import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import '../cubit.dart';
import '../states.dart';

class ResetButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller=ForgotPasswordCubit.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is ForgotPasswordLoading
          ? CircularProgressIndicator(

      )
          : CustomButton(
          color: Color(0xFFFD9A25),
          text: LocaleKeys.forgotPassword_resetPassword.tr(),
          textColor: Colors.white,
          // function: () => Navigator.pushNamed(context,pinCodeScreen))
          function: () => controller.verifyEmail(context)),
    );
  }
}
