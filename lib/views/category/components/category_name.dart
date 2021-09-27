import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/category/components/states.dart';

import '../cubit.dart';

class CategoryName extends StatelessWidget {
  final String name;

  const CategoryName( this.name) ;


  @override
  Widget build(BuildContext context) {
    final controller=CategoriesCubit.of(context);
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      width: MediaQuery.of(context).size.width * 0.55,
      child: Text(
       name,
        style: TextStyle(
          fontSize: 18,
        ),
      ),);
  }
}
