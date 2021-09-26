import 'package:flutter/material.dart';
import 'package:storezone/core/storage.dart';

class FullScreenImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          child: Center(
            child: Image.network(
              AppStorage.getImage,
            ),
          ),
        ),

    );
  }
}
