import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/category/components/category_image.dart';
import 'package:storezone/views/favorite/states.dart';
import 'package:storezone/views/favorite/cubit.dart';
import 'components/favorite_item_name.dart';
import 'components/old_and_new_price.dart';

class FavoritesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: update favorite list after deleting item from favorites
    return BlocProvider(
      create: (context)=>FavoritesCubit()..getFavorites(),
      child: BlocBuilder<FavoritesCubit,FavoritesStates>(

        builder:(context,state)=>state is FavoritesLoading?Center(child: CircularProgressIndicator()) :
        FavoritesCubit.of(context).products.length==0?Center(child: Text("There are no favorites")):

        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: FavoritesCubit.of(context).products.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.94,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, detailsScreen,arguments: {'id':FavoritesCubit.of(context).products[index].product.id});
                  },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  color: Colors.white,
                  elevation: 0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          CategoryImage(FavoritesCubit.of(context).products[index].product.image),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FavoriteItemName(FavoritesCubit.of(context).products[index].product.name),
                            Row(
                              children: [NewPrice(FavoritesCubit.of(context).products[index].product.price),],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
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
