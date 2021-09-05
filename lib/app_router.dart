import 'package:flutter/material.dart';
import 'package:storezone/views/forgot_password/view.dart';
import 'package:storezone/views/home/view.dart';
import 'package:storezone/views/login/view.dart';
import 'package:storezone/views/register/view.dart';
import 'package:storezone/views/splash/view.dart';

import 'consts/strings.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(builder: (_)=>RegisterView());
      case loginScreen:
        return MaterialPageRoute(builder: (_)=>LoginView());
      case forgotPasswordScreen:
        return MaterialPageRoute(builder: (_)=>ForgotPasswordView());
    }
  }
}

