
import 'package:flutter/material.dart';

import '../cubit.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SearchCubit.of(context);
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller.searchController,
          ),
        ),
        IconButton(
          onPressed: ()=>controller.search,
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}