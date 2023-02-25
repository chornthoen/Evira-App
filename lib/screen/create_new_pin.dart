import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/component/button_widget.dart';
import 'package:my_app/screen/set_your_fingerprint.dart';
import 'package:my_app/screen/sign_up_screen.dart';

class CreateNewPIN extends StatefulWidget {
  const CreateNewPIN({Key? key}) : super(key: key);
  static const routeName = '/create_new_pin';

  @override
  State<CreateNewPIN> createState() => _CreateNewPINState();
}

class _CreateNewPINState extends State<CreateNewPIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Create New PIN',
            style: GoogleFonts.urbanist(
              textStyle: Theme.of(context).textTheme.subtitle1,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          elevation: 0,
          leading: IconButton(
            splashRadius: 0.01,
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Add PIN number to make your account more secure.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.urbanist(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 90),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    otp(context),
                    otp(context),
                    otp(context),
                    otp(context),
                  ],
                ),
                const SizedBox(height: 220),
                ButtonWidget(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, SetYourFingerPrint.routeName);
                  },
                ),
              ],
            ),
          ),
        ));
  }

  SizedBox otp(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 55,
      child: Container(
        padding: const EdgeInsets.only(
          top: 18,
          left: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffFAFAFA),
          border: Border.all(
            color: const Color(0xFFEBEEF2),
          ),
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "0",
            border: InputBorder.none,
            hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: const Color(0xFFDADEE3),
                  fontSize: 29,
                  fontWeight: FontWeight.w600,
                ),
          ),
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: const Color(0xFF09101D),
                fontSize: 29,
                fontWeight: FontWeight.w600,
              ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0) {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}
