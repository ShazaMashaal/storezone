import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Card(
            child: Column(
              children: [
                Container(
                  padding:EdgeInsets.all(10),
                  child:
                  Text("Laptop selection Up to 20% off",style: TextStyle(fontWeight: FontWeight.w300),),
                ),
                Expanded(

                  child: Image.network(
                    "https://i.pcmag.com/imagery/reviews/01dnlPma5zFUPFMEpVuAjDx-2..1623424646.jpg",fit: BoxFit.fill,),
                )
              ],
            )));
  }
}
