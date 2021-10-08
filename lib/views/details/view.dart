import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/components/horizontal_rating_bar.dart';
import 'package:storezone/views/details/components/item_title.dart';
import 'package:storezone/views/details/product_details_cubit.dart';
import 'components/delivery_price.dart';
import 'components/item_image.dart';
import 'components/item_price.dart';
import 'components/purchase.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;
    final id = arguments['id'];
    print(id);
    return BlocProvider(
      create: (context) => ProductDetailsCubit(id)..getProductDetails(),
      child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) => state is ProductDetailsLoading
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                body: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(""),
                            // Text(product.name),

                            HorizontalRatingBar(),
                          ],
                        ),
                        ItemTitle(ProductDetailsCubit.of(context)
                            .productDetails
                            .data
                            .name),
                        ItemImage(),
                        Column(
                          children: [
                            ItemPrice(),
                          ],
                        ),

                        DeliveryPrice(),
                        // RaisedButton.icon(onPressed: null, icon: Icon(Icons.keyboard_arrow_down_sharp),label :Text( "Qty :1"),textColor: Colors.white,),
                        Purchase(
                            ProductDetailsCubit.of(context)
                                .productDetails
                                .data
                                .inCart,
                            ProductDetailsCubit.of(context)
                                .productDetails
                                .data
                                .id),
                        //TODO : separate description and display each feature in a single line
                        Text(
                          "Description",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) =>
                                Text("dfdfdgsdfgd"))
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
