import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/login/components/email_text_field.dart';
import 'package:storezone/views/login/components/password.text_field.dart';
import 'package:storezone/views/register/components/conditions_agreement_text.dart';
import 'package:storezone/views/register/cubit.dart';
import 'package:storezone/views/register/states.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:storezone/widgets/custom_text_field.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = RegisterCubit.of(context);
    return Form(
      key: controller.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextField(
            label: LocaleKeys.register_yourName.tr(),
            controller: controller.userNameController,
          ),
          EmailTextField(
            controller: controller.emailController,
          ),
          PasswordTextField(
          controller: controller.passwordController,),
          CustomTextField(
            obscureText: true,
              controller: controller.confirmPasswordController,
              hintText:LocaleKeys.register_confirmPasswordHint.tr() ,
            label: LocaleKeys.register_confirmPassword.tr(),
            validator: (confirmation)=>confirmation.isEmpty||confirmation!=controller.passwordController.text?"Doesn't Match Password":null,
          ),
          CustomTextField(
            keyboardType: TextInputType.number,
            label: LocaleKeys.register_phoneNumber.tr(),controller: controller.phoneNumberController,),
          BlocBuilder(
            bloc: controller,

            builder:(context,state)=>state is RegisterLoading?CircularProgressIndicator(): CustomButton(
                color: appCyanColor,
                text: LocaleKeys.login_register.tr(),
                height: 16,
                textColor: Colors.white,
                function: () => controller.register(context)),
          ),
          conditionAgreementText(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              LocaleKeys.register_alreadyHaveAccount.tr(),
              style: TextStyle(
                  color: Color(
                    0xFFB2B2B2,
                  ),
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          CustomButton(
              color: Color(0xFFFFF6E9),
              text: LocaleKeys.login_login.tr(),
              height: 16,
              function: () => Navigator.pop(context),
              textColor: appCyanColor),
        ],
      ),
    );
  }
}
