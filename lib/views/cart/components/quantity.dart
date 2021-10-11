import 'package:flutter/material.dart';
import 'package:storezone/views/cart/cart_cubit.dart';

import 'circle_button.dart';

class Quantity extends StatefulWidget {
  final int quantity;
  final int cartItemId;
   Quantity(this.cartItemId, this.quantity);


  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {

  int quantity=1;

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
        CircleButton(
            quantity == 1
                ? Icon(
                    Icons.delete,
                    color: Colors.black,
                  )
                : Text(
                    "-",
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ), () {
          setState(() {
            if (quantity == 1)
              CartCubit.of(context).deleteFromCart(widget.cartItemId, context);
            else
              quantity --;
            CartCubit.of(context).changeQuantity(widget.cartItemId, quantity);
          }
          );

        }),
        Text(quantity.toString()),
        CircleButton(
            Icon(
              Icons.add,
              color: Colors.black,
            ), () {
          setState(() {
            quantity ++;

            CartCubit.of(context).changeQuantity(widget.cartItemId, quantity);
          });
        })
      ],
    );
  }
}
