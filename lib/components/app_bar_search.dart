import 'package:flutter/material.dart';

class AppBarSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField(
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
onPressed: () {},
)),

);
  }
}
