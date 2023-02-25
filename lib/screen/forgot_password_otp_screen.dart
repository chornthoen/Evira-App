import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/component/button_widget.dart';
import 'package:my_app/screen/create_new_password_screen.dart';

import '../component/otp_widget.dart';

class ForgotPasswordOTPScreen extends StatefulWidget {
  const ForgotPasswordOTPScreen({Key? key}) : super(key: key);
  static const String routeName = "forgot_OTP";

  @override
  State<ForgotPasswordOTPScreen> createState() =>
      _ForgotPasswordOTPScreenState();
}

class _ForgotPasswordOTPScreenState extends State<ForgotPasswordOTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 100),
            Center(
              child: Text(
                "Code has been send to +1 111 ******99",
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                OTPTextField(),
                OTPTextField(),
                OTPTextField(),
                OTPTextField(),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Resend code in 55 s",
              style: GoogleFonts.urbanist(
                textStyle: Theme.of(context).textTheme.subtitle1,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 150),
            ButtonWidget(
              text: "Verify",
              onPressed: () {
                Navigator.pushNamed(
                    context, CreateNewPasswordScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
