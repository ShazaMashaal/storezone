import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/category_products/states.dart';
import 'package:storezone/views/home/components/products.dart';

import 'cubit.dart';

class CategoryProducts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;

    return BlocProvider(
        create: (context) => CategoryProductsCubit(arguments['id']),
        child:  BlocBuilder<CategoryProductsCubit,CategoryProductsStates>(

          builder:(context,state)=> state is CategoryProductsLoading?Center(child: CircularProgressIndicator()) :SingleChildScrollView(
              child:  Column(
                children: [
                  Products(CategoryProductsCubit.of(context))
                ],
              ),
            ),
        ),
        );
  }
}
