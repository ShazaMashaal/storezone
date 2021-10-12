import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/bottom_navigation_bar/components/app_bar_color.dart';

import 'components/complaint_form.dart';
import 'complaints_cubit.dart';

class ComplaintsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: AppBarColor(),
      ),
      body: BlocProvider(
        create: (context) => ComplaintsCubit(),
        child: SingleChildScrollView(
          child: ComplaintForm(),
        ),
      ),
    );
  }
}
