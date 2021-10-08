import 'package:flutter/material.dart';
import 'package:storezone/views/cart/cart_cubit.dart';

import 'circle_button.dart';

class Quantity extends StatefulWidget {
  final int quantity;
  final int cartItemId;

  const Quantity( this.cartItemId, this.quantity) ;
  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  int quantity ;

  @override
  void initState() {
    super.initState();
    quantity = widget.quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        CircleButton(widget.quantity==1?Icon(Icons.delete,color: Colors.black,):Text("-",style: TextStyle(color: Colors.black,fontSize: 40),),
            (){
              setState(() {
                quantity +=quantity;
                CartCubit().changeQuantity(widget.cartItemId,quantity);
              });

            }),
        Text(widget.quantity.toString()),
        CircleButton( Icon(Icons.add,color: Colors.black,
        ),
            (){
          setState(() {
            quantity -=quantity;
            CartCubit().changeQuantity(widget.cartItemId,quantity);
          });

        })
      ],
    );
  }
}
