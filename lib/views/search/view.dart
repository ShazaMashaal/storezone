import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/category/components/category_image.dart';
import 'package:storezone/views/favorite/components/favorite_item_name.dart';
import 'package:storezone/views/search/search_cubit.dart';

class SearchResultView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;
    final text = arguments['text'];
    return Scaffold(
      body: BlocProvider(
        create: (context)=>SearchCubit()..getSearchResult(text),
        child: BlocBuilder<SearchCubit,SearchState>(

          builder:(context,state)=>state is SearchLoading?Center(child: CircularProgressIndicator()) :
          SearchCubit.of(context).result.length==0?Center(child: Text("no result")):

          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: SearchCubit.of(context).result.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.94,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, detailsScreen,arguments: {'id':SearchCubit.of(context).result[index].id});
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
                            CategoryImage(SearchCubit.of(context).result[index].image),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FavoriteItemName(SearchCubit.of(context).result[index].name),

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
      ),
    );
  }
}
