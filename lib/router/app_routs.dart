
import 'package:flutter/material.dart';
import 'package:my_app/screen/btm_bar_screen.dart';
import 'package:my_app/screen/create_new_pin.dart';
import 'package:my_app/screen/fill_your_profile.dart';
import 'package:my_app/screen/forgot_password_otp_screen.dart';
import 'package:my_app/screen/forgot_password_screen.dart';
import 'package:my_app/screen/let_you_in.dart';
import 'package:my_app/screen/on_boarding_screen.dart';
import 'package:my_app/screen/sign_up_screen.dart';
import 'package:my_app/screen/splash_screen.dart';
import 'package:my_app/screen/welcome_screen.dart';

import '../screen/create_new_password_screen.dart';
import '../screen/set_your_fingerprint.dart';
import '../screen/sign_in_screen.dart';


class AppRouter{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case WelcomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
        case OnBoardingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case LetYouIn.routeName:
        return MaterialPageRoute(builder: (_) => const LetYouIn());
        case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
        case SignInScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case FillYourProfile.routeName:
        return MaterialPageRoute(builder: (_) => const FillYourProfile());
        case CreateNewPIN.routeName:
        return MaterialPageRoute(builder: (_) => const CreateNewPIN());
        case SetYourFingerPrint.routeName:
        return MaterialPageRoute(builder: (_) => const SetYourFingerPrint());
        case ForgotPasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case ForgotPasswordOTPScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordOTPScreen());
        case CreateNewPasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const CreateNewPasswordScreen());
        case BottomBarScreen.routeName:
        return MaterialPageRoute(builder: (_) => const BottomBarScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
