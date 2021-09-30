import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storezone/views/bottom_navigation_bar/components/custom_drawer.dart';
import 'package:storezone/widgets/custom_button.dart';

class CartView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Subtotal EGP : 156" ,
                style: TextStyle(
                    fontSize: 22),
              ),
              CustomButton(text:" Proceed to buy (2 items)",color: Color(
                  0xFF9ABDFD),),
              Divider(),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) =>Column(
                    children: [
                      Row(
                        children: [
                          Image.network("https://images-na.ssl-images-amazon.com/images/I/41Leu3gBUFL.jpg",height: 50,width: 50,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("itemNAmeitemNAmeitemNAmeNAme",maxLines: 2,),
                              Text("EGP : 123",)
                            ],
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
