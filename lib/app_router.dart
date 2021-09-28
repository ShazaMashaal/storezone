import 'package:flutter/material.dart';
import 'package:storezone/views/FAQs/view.dart';
import 'package:storezone/views/bottom_navigation_bar/view.dart';
import 'package:storezone/views/cart/view.dart';
import 'package:storezone/views/category_products/view.dart';
import 'package:storezone/views/change_password/view.dart';
import 'package:storezone/views/details/view.dart';
import 'package:storezone/views/edit_profile/components/full_screen_image.dart';
import 'package:storezone/views/edit_profile/view.dart';
import 'package:storezone/views/forgot_password/view.dart';
import 'package:storezone/views/login/view.dart';
import 'package:storezone/views/pin_code/view.dart';
import 'package:storezone/views/register/view.dart';
import 'package:storezone/views/reset_password/view.dart';
import 'package:storezone/views/search/view.dart';
import 'package:storezone/views/splash/view.dart';

import 'consts/strings.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(builder: (_)=>SplashView());
      case loginScreen:
        return MaterialPageRoute(builder: (_)=>LoginView());
      case forgotPasswordScreen:
        return MaterialPageRoute(builder: (_)=>ForgotPasswordView());
      case forgotPasswordScreen:
        return MaterialPageRoute(builder: (_)=>ChangePasswordView());

      case registerScreen:
        return MaterialPageRoute(builder: (_)=>RegisterView());
      case pinCodeScreen:
        return MaterialPageRoute(builder: (_)=>PinCodeView(),settings: settings);
      case resetPasswordScreen:
        return MaterialPageRoute(builder: (_)=>ResetPasswordView(),settings: settings);
      case homeScreen:
        return MaterialPageRoute(builder: (_)=>Home());
      case detailsScreen:
        return MaterialPageRoute(builder: (_)=>DetailsView());
      case cartScreen:
        return MaterialPageRoute(builder: (_)=>CartView());
      case editProfileScreen:
        return MaterialPageRoute(builder: (_)=>EditProfileView());
      case fullImageScreen:
          return MaterialPageRoute(builder: (_)=>FullScreenImage());
      case changePasswordScreen:
        return MaterialPageRoute(builder: (_)=>ChangePasswordView());
      case categoryProductsScreen:
        return MaterialPageRoute(builder: (_)=>CategoryProducts(),settings: settings);
      case searchScreen:
        return MaterialPageRoute(builder: (_)=>SearchView());
      case FAQsScreen:
        return MaterialPageRoute(builder: (_)=>FAQsView());

    }
  }
}

