import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/edit_profile/components/profile_cover.dart';
import 'package:storezone/views/edit_profile/components/profile_image.dart';
import 'package:easy_localization/easy_localization.dart';
import '../cubit.dart';
import 'change_image_button.dart';
import 'edit_profile_text_field.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = EditProfileCubit.of(context);
    return Expanded(
      flex: 3,
      child: LayoutBuilder(
        builder: (context, constraints) => BlocBuilder(
          bloc: controller,
          builder:(context,state)=> Container(
            decoration: profileCover(context),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(LocaleKeys.settings_account.tr().toUpperCase(),
                    style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300,wordSpacing: 1,letterSpacing: 1),),
                  SizedBox(height: constraints.maxHeight/15,),

                  Stack(
                    children: [
                      ProfileImage(constraints: constraints,),
                      ChangeImageButton(),
                    ],
                  ),

                  SizedBox(height: constraints.maxHeight/25,),
                  EditProfileTextField(constraints:constraints,color: Colors.white,controller:controller.nameController ,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
