import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/views/order_details/order_details_model.dart';

class OrderPriceDetailsCard extends StatelessWidget {
  final Data orderDetails;

  const OrderPriceDetailsCard(this.orderDetails);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Items", style: TextStyle(fontSize: 16)),
                Text("VAT", style: TextStyle(fontSize: 16)),
                Text("Payment method", style: TextStyle(fontSize: 16)),

                SizedBox(
                  height: 15,
                ),
                Text("Order total",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("EGP " + orderDetails.cost.toString(),
                    style: TextStyle(fontSize: 16)),
                Text("EGP " + orderDetails.vat.toString(),
                    style: TextStyle(fontSize: 16)),
                Text( orderDetails.paymentMethod.toString(),
                    style: TextStyle(fontSize: 16)),
                SizedBox(
                  height: 15,
                ),
                Text("EGP " + orderDetails.total.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB82D25),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
