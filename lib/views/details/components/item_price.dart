import 'package:flutter/material.dart';

class ItemPrice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Price: ",style: TextStyle(color: Colors.grey,fontSize: 16)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("	EGP 130.00",style: TextStyle(color: Color(0xFFB12704),fontSize: 18),),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10),

                  child: Text("	All prices include VAT.",style: TextStyle(fontSize: 16)))
            ],
          )
        ],
      ),
    );
  }
}
