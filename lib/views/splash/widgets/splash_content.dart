import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/views/splash/widgets/progress_indicator.dart';

Center splashContent() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(amazonLogo),
        progressIndicator()
      ],
    ),
  );
}