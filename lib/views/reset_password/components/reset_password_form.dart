import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/login/components/login_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:storezone/views/reset_password/cubit.dart';
import 'package:storezone/views/reset_password/states.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:storezone/widgets/custom_text_field.dart';

class ResetPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = ResetPasswordCubit.of(context);
    return Form(
      key: controller.formKey,
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
          child: Column(
            children: [
              text(
                  LocaleKeys.resetPassword_instructions.tr(),
                  Color(
                    0xFF898989,
                  )),
              CustomTextField(
                obscureText: true,
                label: LocaleKeys.resetPassword_newPassword.tr(),
                controller: controller.passwordController,
              ),
              CustomTextField(
                obscureText: true,
                label: LocaleKeys.resetPassword_confirmNewPassword.tr(),
                controller: controller.confirmPasswordController,
                validator: (confirmation) => confirmation.isEmpty ||
                        confirmation != controller.passwordController.text
                    ? "Doesn't Match Password"
                    : null,
              ),
              SizedBox(
                height: 30,
              ),
              BlocBuilder(
                  bloc: controller,
                  builder:(context,state)=> state is ResetPasswordLoading? CircularProgressIndicator(): CustomButton(
                  color: appOrangeColor,
                  text: "Save",
                  textColor: Colors.white,
                  function: ()=>controller.resetPassword(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
