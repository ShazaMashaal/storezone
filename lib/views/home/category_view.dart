
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:storezone/views/home/components/category_view_components/category_image.dart';

import 'components/category_view_components/category_name.dart';
import 'components/category_view_components/grey_back_arrow.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.94,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            color: Colors.white,
            elevation: 0,
            child: Row(
              children: <Widget>[
                CategoryImage(),
                CategoryName(),
                GreyForwardArrow(),
              ],
            ),
          ),
        );
      },
    );
  }
}
