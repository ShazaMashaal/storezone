import 'package:flutter/material.dart';
import 'package:storezone/views/edit_profile/cubit.dart';

class ChangeImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller=EditProfileCubit.of(context);
    return Positioned(
        bottom: 0,
        right: 0,
        child: IconButton(
          icon: CircleAvatar(
              backgroundColor: Color(0xFFFD9A25),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          onPressed: () =>controller.pickPhoto(),
        ));
  }
}
