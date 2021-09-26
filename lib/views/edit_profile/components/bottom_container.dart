import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/edit_profile/cubit.dart';
import 'package:storezone/views/edit_profile/states.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'edit_profile_text_field.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = EditProfileCubit.of(context);
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            EditProfileTextField(
              constraints: constraints,
              label: LocaleKeys.login_email.tr(),
              color: Colors.grey[400],
              controller: controller.emailController,
            ),

            EditProfileTextField(
              constraints: constraints,
              label: LocaleKeys.register_phoneNumber.tr(),
              color: Colors.grey[400],
              controller: controller.phoneController,
            ),
            Container(
                width: constraints.maxWidth / 2,
                child: BlocBuilder(
                  bloc: controller,
                  builder:(context,state)=>state is EditProfileLoading? CircularProgressIndicator(): CustomButton(
                    function: ()=>controller.update(),
                    color: Color(0xFFFD9A25),
                    textColor: Colors.white,
                    text: LocaleKeys.editProfile_update.tr(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
