import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';

class AppBarSearch extends StatelessWidget {
  TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      cursorColor: Colors.black,
      style: TextStyle(fontSize: 17),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.black)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: " Search Amazon.eg",
          prefixIcon: IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, searchScreen,arguments: {'text':searchController.text});


            },
          )),
    );
  }
}
