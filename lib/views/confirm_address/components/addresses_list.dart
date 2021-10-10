import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:storezone/views/new_address/addresses_model.dart';
import 'package:storezone/widgets/custom_button.dart';

import '../confirm_address_cubit.dart';

class AddressCard extends StatelessWidget {
final AddressData address;

  const AddressCard(this.address);
  @override
  Widget build(BuildContext context) {
    final controller=ConfirmAddressCubit.of(context);
    return Card(
      margin: EdgeInsets.all(5),
     child: Padding(
       padding: const EdgeInsets.all(14.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(address.details),
            Text(address.region+","+address.city),
            Text(address.notes??""),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                child: CustomButton(text: "Deliver to this address",textColor: Colors.white,color: Color(0xFFFD9A25),height: 25,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //TODO: How to reuse the same add address form in edit with out get null exception
                  OutlinedButton(onPressed: (){}, child: Text("Edit",style: TextStyle(color: Colors.black),)),
                  OutlinedButton(onPressed: (){

                    controller.deleteAddress(context, address.id);
                  }, child: Text("Delete",style: TextStyle(color: Colors.black))),
                ],
              ),
            )
          ],
        ),
     )
    );
  }
}
