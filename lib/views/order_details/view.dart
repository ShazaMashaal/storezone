import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/bottom_navigation_bar/components/app_bar_color.dart';
import 'package:storezone/views/order_details/components/order_price_details_card.dart';
import 'package:storezone/views/order_details/components/product_details.dart';
import 'package:storezone/views/order_details/order_details_cubit.dart';

import 'components/address_details.dart';

class OrderDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;

    return BlocProvider(
      create: (context) =>
          OrderDetailsCubit()..getOrderDetails(arguments['orderId']),
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: AppBarColor(),
        ),
        body: BlocBuilder<OrderDetailsCubit, OrderDetailsState>(
            builder: (context, state) => state is OrderDetailsLoading
                ? Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          OrderPriceDetailsCard(
                              OrderDetailsCubit.of(context).orderDetails.data),
                          AddressDetails(OrderDetailsCubit.of(context)
                              .orderDetails
                              .data
                              .address),
                          ProductDetails(OrderDetailsCubit.of(context)
                              .orderDetails
                              .data
                              .products),
                        ],
                      ),
                    ),
                  )),
      ),
    );
  }
}
