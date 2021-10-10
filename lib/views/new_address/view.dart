import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/bottom_navigation_bar/components/app_bar_color.dart';
import 'package:storezone/views/new_address/address_cubit.dart';

import 'components/form.dart';

class NewAddressView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddressCubit(),
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: AppBarColor(),
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 50),
            children: [
                      Text("Add a new address",style: TextStyle(fontSize: 25),),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: NewAddressScreenForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}