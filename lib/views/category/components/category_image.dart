import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/category/components/states.dart';

import '../cubit.dart';

class CategoryImage extends StatelessWidget {
  final int index;

  const CategoryImage({Key key, this.index}) : super(key: key);
//TODO: Try Shimmer
  @override
  Widget build(BuildContext context) {
    final controller=CategoriesCubit.of(context);
    return BlocBuilder(
      bloc: controller,
      builder:(context,state)=>state is CategoriesLoading?Center(child: CircularProgressIndicator()): Padding(
        padding: const EdgeInsets.all(5.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.3,
            maxHeight: MediaQuery.of(context).size.width * 0.3,
          ),
          child: Image.network(
            controller.categories[index].image,
            fit: BoxFit.fill,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
