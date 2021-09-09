import 'package:flutter/material.dart';


class RichSpan extends StatelessWidget {
  final String text;

  final String boldText;

  final Color boldColor;

  const RichSpan({Key key, this.text, this.boldText, this.boldColor}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
      child: RichText(
        text: TextSpan(
          text: text,
            children: [
              TextSpan(
                text: boldText,
                  style: TextStyle(
                      color: boldColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ],
            style: TextStyle(color: Colors.black54, fontSize: 15)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
