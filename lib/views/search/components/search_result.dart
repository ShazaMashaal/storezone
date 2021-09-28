import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit.dart';
import '../states.dart';

class SearchResultList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = SearchCubit.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is SearchLoading
          ? Center(child: CircularProgressIndicator())
          :
      controller.result.isEmpty ? Center(
        child: Text('No Result!', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
      ) : Expanded(
        child: ListView.builder(
          itemCount: controller.result.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(controller.result[index]),
          ),
        ),
      ),
    );
  }
}
