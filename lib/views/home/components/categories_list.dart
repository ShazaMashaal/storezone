import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      child: ListView.builder(
        // shrinkWrap: true,
        // physics: ClampingScrollPhysics(),

        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return  Container(
              padding: EdgeInsets.only(left: 40),
          width: MediaQuery.of(context).size.width/2.5,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Image.network("https://m.media-amazon.com/images/I/61OvV27-44L._AC_SL1500_.jpg", fit: BoxFit.fitWidth,),
               ),
              Text("electronic devices",style: TextStyle(fontSize: 16),)
            ])
          );
        },
      ),
    );
  }
}
