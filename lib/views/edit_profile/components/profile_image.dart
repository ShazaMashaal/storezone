import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/edit_profile/cubit.dart';

class ProfileImage extends StatelessWidget {
final  BoxConstraints constraints;

  const ProfileImage({Key key, this.constraints}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller=EditProfileCubit.of(context);
    return BlocBuilder(
      bloc: controller,
      builder:(context,state)=> GestureDetector(
        //TODO : navigating to fill screen image doesn't work
        onTap: ()=>controller.fullScreenImage(context),
        // child: ClipOval(
        //   child:controller.file == null ? Image.network(
        //     AppStorage.getImage,
        //     width: constraints.maxHeight / 2.5,
        //     height: constraints.maxHeight / 2.5,
        //     fit: BoxFit.cover,
        //   ):FileImage(controller.file),
        // ),
        child: Container(
          // child: Icon(
          //   Icons.person_outline,
          //   size: 100,
          //   color: Colors.grey,
          // ),
          width: constraints.maxHeight / 2.5,
          height: constraints.maxHeight / 2.5,
          decoration: BoxDecoration(
            // color: Colors.red,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: controller.file == null ? NetworkImage(AppStorage.getImage) : FileImage(controller.file),
              ),
              border: Border.all(color: Colors.grey)),
        ),
      ),
    );
  }
}
