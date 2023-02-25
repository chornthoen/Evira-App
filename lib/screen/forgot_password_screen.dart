import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/component/button_widget.dart';
import 'package:my_app/screen/forgot_password_otp_screen.dart';

import '../common/color_string.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const String routeName = '/forgot_password';

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  bool selectEmail = false;
  bool selectPhone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: GoogleFonts.urbanist(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          splashRadius: 1,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const Center(
                child: Image(
                  image: AssetImage(tForgotPasswordImg),
                  height: 250,
                  width: 250,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Select which contact details should we use to reset your password',
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                child: selectCard(
                    context,
                    select: selectPhone,
                  title: '+855 60******77',
                  subtitle: 'via SMS:',
                  icon: Icon(Icons.chat),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectEmail = !selectEmail;
                  });
                },
                child: selectCard(
                  context,
                  select: selectEmail,
                  title: '+855 60******77',
                  subtitle: 'via Email:',
                  icon: const Icon(Icons.mail),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ButtonWidget(
                text: 'Continue',
                onPressed: (){
                  Navigator.pushNamed(context, ForgotPasswordOTPScreen.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Container selectCard(
    BuildContext context, {
    required String subtitle,
    required String title,
    required Icon icon,
        required bool select,
  }) {
    bool select = true;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 20),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: select ? Color(0xffF2F2F2) : primaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xffE7E7E7),
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
