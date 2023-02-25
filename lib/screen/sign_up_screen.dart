import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/color_string.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/component/button_widget.dart';
import 'package:my_app/screen/btm_bar_screen.dart';
import 'package:my_app/screen/fill_your_profile.dart';

import '../component/check_box_widget.dart';
import '../component/form_text_field.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const routeName = '/signUp';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool value = false;

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
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Text(
                "Create your Account",
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 40),
              const TextFieldForm(
                hintText: 'Email',
                prefixIcon:  Icon(
                  IconlyBold.message,
                ),
              ),
              const TextFieldForm(
                hintText: 'Password',
                prefixIcon: Icon(
                  IconlyBold.lock,
                ),
                suffixIcon: Icon(
                  IconlyBold.hide,
                ),
              ),
              const SizedBox(height: 10),
              const CheckBoxWidget(),
              const SizedBox(height: 10),
              ButtonWidget(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, BottomBarScreen.routeName);
                },
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 100,
                    color: const Color(0xFFE5E5E5),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'or continue with',
                    style: GoogleFonts.urbanist(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF616161),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 1,
                    width: 100,
                    color: const Color(0xFFE5E5E5),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.only(right: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFE5E5E5),
                        )),
                    child: const Image(
                      image: AssetImage(tFacebookImg),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.only(right: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFE5E5E5),
                        )),
                    child: const Image(
                      image: AssetImage(tGoogleImg),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFE5E5E5),
                        )),
                    child: const Image(
                      image: AssetImage(tAppleImg),
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.urbanist(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF9E9E9E),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


