import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
final Widget child;
final Function function;

  const CircleButton( this.child, this.function) ;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      child: FloatingActionButton(
          heroTag: null,
          child: child,
          backgroundColor: Colors.white,
          onPressed: function),
    );
  }
}
