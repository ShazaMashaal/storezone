import 'package:flutter/material.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/splash/widgets/splash_content.dart';

class SplashView extends StatefulWidget {
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      AppStorage.isLogged
          ? Navigator.pushNamed(context, homeScreen)
          : Navigator.pushNamed(context, loginScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashContent(),
    );
  }
}
