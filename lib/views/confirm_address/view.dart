import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/consts/strings.dart';
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

                    Center(child: Container(width: MediaQuery.of(context).size.width/2, child: CustomButton(textColor: Colors.white,text: "Add new address",color:  appCyanColor,function: (){
                      Navigator.pushNamed(context, cartScreen);
                    },)))
                  ],
                ),
              ),
            ),
          )),
    )
    ;




  }
}
