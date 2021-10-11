import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/category/components/category_image.dart';
import 'package:storezone/views/category/components/states.dart';
import 'package:storezone/views/category/cubit.dart';
import 'components/category_name.dart';
import 'components/grey_back_arrow.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CategoriesCubit()..getCategories(),
      child:  BlocBuilder<CategoriesCubit,CategoriesStates>(

        builder:(context,state)=>state is CategoriesLoading?Center(child: CircularProgressIndicator()): ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount:CategoriesCubit.of(context).categories.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.94,
                child: GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, categoryProductsScreen,arguments:{'id':CategoriesCubit.of(context).categories[index].id} ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    color: Colors.white,
                    elevation: 0,
                    child: Row(
                      children: <Widget>[
                        CategoryImage(CategoriesCubit.of(context).categories[index].image),
                        CategoryName(CategoriesCubit.of(context).categories[index].name),
                        GreyForwardArrow(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
      ),

    );
  }
}
