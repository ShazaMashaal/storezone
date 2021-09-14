import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://img.youm7.com/xlarge/202109010246394639.jpg"),
            )));
  }
}
