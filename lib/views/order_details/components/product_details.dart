import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/shared/fade_image_handle_error.dart';
import 'package:storezone/views/order_details/order_details_model.dart';

class ProductDetails extends StatelessWidget {
  final List<Products> products;

  const ProductDetails(this.products);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context,index)=>
        Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shipment details",
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 20,),
                Row(

                  children: [
                    Container(width: MediaQuery.of(context).size.width/3.5, child: FadeImageHandleError(products[index].image)),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(products[index].name,style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("EGP "+products[index].price.toString(),style: TextStyle(color:  Color(0xFFB82D25),fontWeight: FontWeight.bold),),
                          Text("Quantity: "+products[index].quantity.toString(),style: TextStyle(fontWeight: FontWeight.bold)),

                        ],
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
    );
  }
}
