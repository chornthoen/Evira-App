
import 'package:flutter/material.dart';
import 'package:my_app/model/electronics_models.dart';
import 'package:my_app/screen/btm_bar_screen.dart';
import 'package:my_app/screen/create_new_pin.dart';
import 'package:my_app/screen/fill_your_profile.dart';
import 'package:my_app/screen/forgot_password_otp_screen.dart';
import 'package:my_app/screen/forgot_password_screen.dart';
import 'package:my_app/screen/home/bage_screen.dart';
import 'package:my_app/screen/home/clothes_screen.dart';
import 'package:my_app/screen/home/electronics_Screen.dart';
import 'package:my_app/screen/home/shoes_screen.dart';
import 'package:my_app/screen/home/toys_screen.dart';
import 'package:my_app/screen/home/watch_screen.dart';
import 'package:my_app/screen/let_you_in.dart';
import 'package:my_app/screen/most_popular_screen.dart';
import 'package:my_app/screen/my_wishlist_screen.dart';
import 'package:my_app/screen/notification_screen.dart';
import 'package:my_app/screen/on_boarding_screen.dart';
import 'package:my_app/screen/search_screen.dart';
import 'package:my_app/screen/sign_up_screen.dart';
import 'package:my_app/screen/special_offers_screen.dart';
import 'package:my_app/screen/splash_screen.dart';
import 'package:my_app/screen/welcome_screen.dart';

import '../screen/create_new_password_screen.dart';
import '../screen/home/jewelry_screen.dart';
import '../screen/home/kitchen_screen.dart';
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
      case NotificationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case MyWishlistScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MyWishlistScreen());
      case MostPopularScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MostPopularScreen());
      case SpecialOffersScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SpecialOffersScreen());
      case SearchScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case ClothesScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ClothesScreen());
      case ShoesScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ShoesScreen());
      case BagsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const BagsScreen());
      case ElectronicsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ElectronicsScreen());
      case WatchScreen.routeName:
        return MaterialPageRoute(builder: (_) => const WatchScreen());
      case JewelryScreen.routeName:
        return MaterialPageRoute(builder: (_) => const JewelryScreen());
      case KitchenScreen.routeName:
        return MaterialPageRoute(builder: (_) => const KitchenScreen());
      case ToysScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ToysScreen());

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
