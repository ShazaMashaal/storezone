import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:storezone/components/app_bar.dart';
import 'package:storezone/components/app_bar_search.dart';
import 'package:storezone/components/horizontal_rating_bar.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/details/components/item_title.dart';
import 'package:getwidget/getwidget.dart';
import 'package:storezone/views/home/components/favorite_circle_icon.dart';
import 'package:storezone/views/register/components/register_button.dart';

import 'components/delivery_price.dart';
import 'components/item_image.dart';
import 'components/item_price.dart';
import 'components/purchase.dart';
import 'components/quantity.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Brand: Brand Name"),
                  HorizontalRatingBar(),
                ],
              ),
              ItemTitle(),
              ItemImage(),
              ItemPrice(),
              //TODO: Which better(Row or RichText)?
              // RichText(
              //     textAlign: TextAlign.start,
              //     text: TextSpan(
              //   children: [
              //    TextSpan(text:"EGP 21.00 delivery: ",style: TextStyle(color: Color(0xFF0885B4),fontSize: 16)),
              //     TextSpan(text: "Sept. 20 - 21",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black))
              //   ]
              // )),

              DeliveryPrice(),
              // RaisedButton.icon(onPressed: null, icon: Icon(Icons.keyboard_arrow_down_sharp),label :Text( "Qty :1"),textColor: Colors.white,),
              Quantity(),
              Purchase(),
              Text("Discreption",style: TextStyle(fontWeight: FontWeight.bold),),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder:(context,index)=> Text("dfdfdgsdfgd"))
            ],
          ),
        ),
      ),
    );
  }
}
