import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/color_string.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/screen/sign_up_screen.dart';

import '../component/button_widget.dart';
import 'sign_in_screen.dart';

class LetYouIn extends StatefulWidget {
  const LetYouIn({Key? key}) : super(key: key);
  static const routeName = '/let_you_in';

  @override
  State<LetYouIn> createState() => _LetYouInState();
}

class _LetYouInState extends State<LetYouIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const Image(
                image: AssetImage(tLetYouInImg),
              ),
              const SizedBox(height: 20),
              Text(
                "Let's you in",
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 20),
              widgetContainer(
                context,
                text: 'Continue with Facebook',
                img: tFacebookImg,
              ),
              widgetContainer(
                context,
                text: 'Continue with Google',
                img: tGoogleImg,
              ),
              widgetContainer(
                context,
                text: 'Continue with Apple',
                img: tAppleImg,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 150,
                    color: const Color(0xFFE5E5E5),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'or',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 1,
                    width: 150,
                    color: const Color(0xFFE5E5E5),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                text: 'Sign in with password',
                onPressed: () {
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.urbanist(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF9E9E9E),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: primaryColor
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Container widgetContainer(
    BuildContext context, {
    required String text,
    required String img,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 54,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image(
            image: AssetImage(img),
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 10),
          Text(text,
            style: GoogleFonts.urbanist(
              textStyle: Theme.of(context).textTheme.subtitle1,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
