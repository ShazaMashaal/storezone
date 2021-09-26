import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/category/components/states.dart';

import '../cubit.dart';

class CategoryName extends StatelessWidget {
  final int index;

  const CategoryName({Key key, this.index}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final controller=CategoriesCubit.of(context);
    return BlocBuilder(
        bloc: controller,
        builder:(context,state)=>state is CategoriesLoading?Center(child: CircularProgressIndicator()): Container(
      padding: EdgeInsets.only(bottom: 30),
      width: MediaQuery.of(context).size.width * 0.55,
      child: Text(
       controller.categories[index].name,
        style: TextStyle(
          fontSize: 18,
        ),
      ),)
    );
  }
}
