import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ElevatedButton.icon(
    onPressed: (){},
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              // color: Colors.pink,
              size: 30.0,
            ),
            label: Text('Qty: 1'),
            style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                )
            )),
      ),
    );
  }
}
