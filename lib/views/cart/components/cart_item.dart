import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/cart/cart_cubit.dart';
import 'package:storezone/views/cart/components/quantity.dart';
import 'package:storezone/views/category/components/category_image.dart';
import 'package:storezone/views/favorite/components/favorite_item_name.dart';
import 'package:storezone/views/favorite/components/old_and_new_price.dart';
import '../cart_model.dart';

class CartItem extends StatefulWidget {
  final CartItems cartItem;

  const CartItem(this.cartItem);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, detailsScreen,
            arguments: {'id': widget.cartItem.product.id});
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        color: Colors.white,
        elevation: 0,
        child: Column(
          children: [
            Row(
              children: [
                CategoryImage(widget.cartItem.product.image),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FavoriteItemName(widget.cartItem.product.name),
                      NewPrice(widget.cartItem.product.price + 0.0),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Quantity(widget.cartItem.id,widget.cartItem.quantity)),
                OutlinedButton(
                  onPressed: () {
                    CartCubit.of(context).deleteFromCart(widget.cartItem.id, context);
                    setState(() {

                    });
                    // Respond to button press
                  },
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
