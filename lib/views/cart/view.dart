import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/cart/cart_cubit.dart';
import 'package:storezone/views/confirm_address/confirm_address_cubit.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'components/cart_item.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final addressController= ConfirmAddressCubit.of(context)..getAddresses();
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
                      child: CartCubit.of(context).cartItems.length==0?Center(child: Text("No Items")): Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                       CartCubit.of(context).subTotalUpdated?   Text(
                            "Subtotal EGP : " +
                                CartCubit.of(context).subTotal.toString(),
                            style: TextStyle(fontSize: 22),
                          ):CircularProgressIndicator(),
                          CustomButton(
                            text:
                                " Proceed to buy (${CartCubit.of(context).cartItems.length} items)",
                            color: Color(0xFFBCBFC4),
                            function: (){
                              if(addressController.addresses.length==0)
                              Navigator.pushNamed(context, newAddressScreen);
                              else
                                Navigator.pushNamed(context, confirmAddressScreen);
                            },
                          ),
                          Divider(),
                          ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: CartCubit.of(context).cartItems.length,
                              itemBuilder: (context, index) => CartItem(CartCubit.of(context).cartItems[index]))
                        ],
                      ),
                    ),
                  ),
                )),
    );
  }
}
