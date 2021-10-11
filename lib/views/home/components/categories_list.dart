import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/category/cubit.dart';


class CategoriesList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller=CategoriesCubit.of(context);
    return BlocBuilder(
      bloc:controller,
      builder:(context,state)=> Container(
        height: MediaQuery.of(context).size.height / 6,
        child: ListView.builder(
          // shrinkWrap: true,
          // physics: ClampingScrollPhysics(),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return  GestureDetector(
              onTap: ()=>Navigator.pushNamed(context, categoryProductsScreen,arguments:{'id':CategoriesCubit.of(context).categories[index].id}),
              child: Container(
                  padding: EdgeInsets.only(left: 40),
              width: MediaQuery.of(context).size.width/2.5,
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[

                   Expanded(
                     flex:5,
                     child : FadeInImage(
                       placeholder: AssetImage("assets/images/placeholder.gif"),
                       imageErrorBuilder:    (BuildContext context, Object exception, StackTrace stackTrace) {
                         return  Image.asset("assets/images/placeholder.gif");
                       },
                       image: NetworkImage(controller.categories[index].image),
                     ),
                   ),
                  Expanded(
                      flex:2,
                      child: Text(controller.categories[index].name,))
                ])
              ),
            );
          },
        ),
      ),
    );
  }
}
