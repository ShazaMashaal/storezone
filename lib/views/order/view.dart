import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/bottom_navigation_bar/components/app_bar_color.dart';

import 'orders_cubit.dart';

class OrdersView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: AppBarColor(),
      ),
      body: BlocProvider(
        create: (context) => OrdersCubit()..getOrders(),
        child: BlocBuilder<OrdersCubit, OrdersState>(
          builder: (context, state) =>state is OrdersLoading?Center(child: CircularProgressIndicator()):
              ListView.builder(
                  itemCount: OrdersCubit.of(context).orders.length,
                  itemBuilder: (context, index) =>
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, orderDetailsScreen,arguments: {'orderId':OrdersCubit.of(context).orders[index].id});
                    },
                    child: Card(
                      margin: EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date: "+OrdersCubit.of(context).orders[index].date,style: TextStyle(fontSize: 18),),
                                Text("Total: "+OrdersCubit.of(context).orders[index].total.toString()+" EGP",style: TextStyle(fontSize: 18),),
                                Text("Status: "+OrdersCubit.of(context).orders[index].status.toString(),style: TextStyle(fontSize: 18),)

                              ],
                            ),
                            OutlinedButton(child: Text("Cancel",style: TextStyle(color: Colors.black),),onPressed: ()=>OrdersCubit.of(context).cancelOrder(OrdersCubit.of(context).orders[index].id, context),)
                          ],
                        ),
                      ),
                    ),
                  )),


        ),
      ),
    );
  }
}
