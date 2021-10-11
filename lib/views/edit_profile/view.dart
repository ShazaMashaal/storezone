import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/edit_profile/cubit.dart';
import 'package:storezone/views/edit_profile/states.dart';
import 'components/bottom_container.dart';
import 'components/top_container.dart';

class EditProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileCubit(),
      child: Scaffold(
        body: BlocBuilder<EditProfileCubit, EditProfileStates>(
          builder: (context, state) => state is EditProfileLoading
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    TopContainer(),
                    Expanded(
                      flex: 4,
                      child: BottomContainer(),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}