import 'package:flutter/material.dart';
import 'package:storezone/consts/dim.dart';

class CustomButton extends StatelessWidget {
  final Function function;

  final double height;

  final Color color;

  final String text;

  final Color textColor;

  const CustomButton(
      {Key key,
      this.function,
      this.height=16,
      this.color,
      this.text,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: function,
        child: Ink(
          //width: 100.0,
          height: heightMediaQuery(context, height),
          decoration: BoxDecoration(
            color: color,
            borderRadius: formFieldsRadius,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 18.0, color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
