import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/register/cubit.dart';
import 'package:storezone/widgets/langAppBar.dart';

import 'components/register_form.dart';

class RegisterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          appBar: langAppBar(),
          body: Center(
            child: ListView(
              padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 50),
              children: [
                Image.asset(
                  amazonLogo,
                  height: heightMediaQuery(context, 8),
                  width: widthMediaQuery(context, 3),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: RegisterForm(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
