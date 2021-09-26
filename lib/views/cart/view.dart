import 'package:flutter/material.dart';
import 'package:storezone/views/bottom_navigation_bar/components/custom_drawer.dart';

class CartView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
    );
  }
}
