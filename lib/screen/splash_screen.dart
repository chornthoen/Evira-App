import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_app/common/color_string.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, WelcomeScreen.routeName,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:const [
          Spacer(),
          Center(
            child: Image(
              image: AssetImage(tSplashImg,),
              height: 150,
              width: 150,
            ),
          ),
          Spacer(),
          Center(
            child: SpinKitCircle(
              color:primaryColor,
              size: 80.0,
            ),
          ),
          SizedBox(height: 80,),
        ],
      ),
    );
  }
}
