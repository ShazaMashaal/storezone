import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/views/order_details/order_details_model.dart';

class AddressDetails extends StatelessWidget {
  final Address addressDetails;

  const AddressDetails(this.addressDetails);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shipping address",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),

                Text(
                    addressDetails.details +
                        ", " +
                        addressDetails.region +
                        ", " +
                        addressDetails.city,
                    style: TextStyle(fontSize: 16)),
                //TODO : how to handle this text from overflowed
                //Text(addressDetails.details+", "+addressDetails.region+", "+addressDetails.city+"fdghd;khdlkhd;kg;lkfg;lkhfglkh;lfgkhfg;l", style: TextStyle(fontSize: 16)),

                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
