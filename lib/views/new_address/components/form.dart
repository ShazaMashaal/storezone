import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/views/new_address/address_cubit.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:storezone/widgets/custom_text_field.dart';

class NewAddressScreenForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = AddressCubit.of(context);

    return Form(
        key: controller.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            CustomTextField(
              label: "Address Name",
              controller: controller.addressName,
              validator:(value)=>value.isEmpty?"Can't be empty":null ,

            ),
          CustomTextField(
            label: "City",
            controller: controller.addressCity,
            validator:(value)=>value.isEmpty?"Can't be empty":null ,

          ), CustomTextField(
            label: "Region",
            controller: controller.addressRegion,
            validator:(value)=>value.isEmpty?"Can't be empty":null ,
          ), CustomTextField(
            label: "Details",
            controller: controller.addressDetails,
            validator:(value)=>value.isEmpty?"Can't be empty":null ,
          ), CustomTextField(
            label: "Note",
            controller: controller.addressNotes,
          ),
          BlocBuilder(
            bloc: controller,

            builder:(context,state)=>state is AddressLoading?CircularProgressIndicator(): CustomButton(
                color: Color(0xFFFD9A25),
                text: "Add address",
                height: 16,
                textColor: Colors.white,
                function: () => controller.addNewAddress(context)),
          ),
        ],
      )
    );
  }
}
