import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/components/app_bar.dart';

import 'components/search_field.dart';
import 'components/search_result.dart';
import 'cubit.dart';

class SearchView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SearchField(),
            SearchResultList(),
          ],
        ),
      ),
    );
  }
}