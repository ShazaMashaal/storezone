import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/login/states.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import '../cubit.dart';

class LoginButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller= LoginCubit.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) =>state is LoginLoading?CircularProgressIndicator(): CustomButton(
          color: appOrangeColor,text: LocaleKeys.login_login.tr(),
          function: () => controller.login(context),
          textColor: Color(0xFFFFF6E9)),
    );
  }
}
