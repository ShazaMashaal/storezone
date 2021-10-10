import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/bottom_navigation_bar/components/app_bar_color.dart';
import 'package:storezone/widgets/custom_button.dart';

import 'components/addresses_list.dart';
import 'confirm_address_cubit.dart';

class ConfirmAddressView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   BlocProvider(
      create: (context) => ConfirmAddressCubit()..getAddresses(),
      child: BlocBuilder<ConfirmAddressCubit, ConfirmAddressState>(
          builder: (context, state) => state is ConfirmAddressLoading
              ? Center(child: CircularProgressIndicator())
              : Scaffold(
            body: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Select a shipping address",style: TextStyle(fontSize: 25),),

                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: ConfirmAddressCubit.of(context).addresses.length,
                        itemBuilder: (context, index) => AddressCard(ConfirmAddressCubit.of(context).addresses[index])),

                    Center(child: Container(width: MediaQuery.of(context).size.width/2, child: CustomButton(textColor: Colors.white,text: "Add new address",color:  Color(0xFFFD9A25),)))
                  ],
                ),
              ),
            ),
          )),
    )
    ;


    //   BlocProvider(
    //   create: (context) => ConfirmAddressCubit()..getAddresses(context),
    //   child: Scaffold(
    //     appBar: AppBar(
    //       flexibleSpace: AppBarColor(),
    //     ),
    //     body: Center(
    //       child: ListView(
    //         padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 50),
    //         children: [
    //           Text("Select a shipping address",style: TextStyle(fontSize: 25),),
    //           Padding(
    //             padding: const EdgeInsets.only(top: 40),
    //             child: AddressesList(),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // )


  }
}
