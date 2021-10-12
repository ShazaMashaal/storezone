import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/views/bottom_navigation_bar/components/app_bar_color.dart';
import 'package:storezone/widgets/custom_button.dart';

import 'choose_payment_method_cubit.dart';

class ChoosePaymentMethodView extends StatefulWidget {
  @override
  _ChoosePaymentMethodViewState createState() => _ChoosePaymentMethodViewState();
}
enum PaymentMethod { ChaOnDelivery, Mastercard }

class _ChoosePaymentMethodViewState extends State<ChoosePaymentMethodView> {
  PaymentMethod _method = PaymentMethod.ChaOnDelivery;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;
    print(arguments['addressId']);
    return BlocProvider(
      create: (context) =>
          ChoosePaymentMethodCubit(arguments['addressId'], _method.index + 1),
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: AppBarColor(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text("Select a payment method",style: TextStyle(fontSize: 25),),
              //TODO:
              ListTile(
                title: const Text('Cash On Delivery'),
                leading: Radio<PaymentMethod>(
                  value: PaymentMethod.ChaOnDelivery,
                  groupValue: _method,
                  onChanged: (PaymentMethod value) {
                    setState(() {
                      _method = value;
                      print(_method.index);
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Mastercard'),
                leading: Radio<PaymentMethod>(
                  value: PaymentMethod.Mastercard,
                  groupValue: _method,
                  onChanged: (PaymentMethod value) {
                    setState(() {
                      _method = value;
                      print(_method.index);
                    });
                  },
                ),
              ),
              BlocBuilder<ChoosePaymentMethodCubit, ChoosePaymentMethodState>(
                builder: (context, state) => state is ChoosePaymentMethodLoading
                    ? CircularProgressIndicator()
                    : CustomButton(
                        text: "Continue",
                        color: appCyanColor,
                        textColor: Colors.white,
                        function: () {
                          ChoosePaymentMethodCubit.of(context).addOrder(context);
                        }),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

