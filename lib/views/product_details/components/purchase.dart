import 'package:flutter/material.dart';
import 'package:storezone/views/product_details/product_details_cubit.dart';
import 'package:storezone/widgets/custom_button.dart';

class Purchase extends StatefulWidget {
  final bool inCart;
  final int id;

  const Purchase(this.inCart, this.id);

  @override
  _PurchaseState createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  bool inCart = false;
  bool isLoading = false;

  @override
  void initState() {
    inCart = widget.inCart;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          color: Color(0xFFFFA41C),
          text: "Buy Now",
          height: 18,
          function: () {},
        ),
        isLoading ? CircularProgressIndicator() : CustomButton(
          color: Color(0xFFFFD814),
          text: inCart ? "Remove from cart" : "Add to cart",
          height: 18,
          function: () async {
            isLoading = true;
            inCart = !inCart;
            setState(() {});
            await ProductDetailsCubit(widget.id)
                .addAndDeleteCartItems(context, widget.id);
            isLoading = false;
            setState(() {});
          },
        )
      ],
    );
  }
}
