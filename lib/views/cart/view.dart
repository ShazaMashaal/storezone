import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/cart/cart_cubit.dart';
import 'package:storezone/views/category/components/category_image.dart';
import 'package:storezone/views/favorite/components/favorite_item_name.dart';
import 'package:storezone/views/favorite/components/old_and_new_price.dart';
import 'package:storezone/widgets/custom_button.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit()..getCarItems(),
      child: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) => state is CartLoading
              ? Center(child: CircularProgressIndicator())
              : Scaffold(
                  body: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Subtotal EGP : " +
                                CartCubit.of(context).subTotal.toString(),
                            style: TextStyle(fontSize: 22),
                          ),
                          CustomButton(
                            text:
                                " Proceed to buy (${CartCubit.of(context).cartItems.length} items)",
                            color: Color(0xFF9ABDFD),
                          ),
                          Divider(),
                          ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: CartCubit.of(context).cartItems.length,
                              itemBuilder: (context, index) =>
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    color: Colors.white,
                                    elevation: 0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            CategoryImage(CartCubit.of(context).cartItems[index].product.image),
                                          ],
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              FavoriteItemName(CartCubit.of(context).cartItems[index].product.name),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [NewPrice(CartCubit.of(context).cartItems[index].product.price+0.0),],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )


                          )
                        ],
                      ),
                    ),
                  ),
                )),
    );
  }
}
