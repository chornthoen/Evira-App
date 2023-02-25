import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/color_string.dart';

import '../common/image_string.dart';

class SetYourFingerPrint extends StatefulWidget {
  const SetYourFingerPrint({Key? key}) : super(key: key);
  static const String routeName = '/set_your_fingerprint';

  @override
  State<SetYourFingerPrint> createState() => _SetYourFingerPrintState();
}

class _SetYourFingerPrintState extends State<SetYourFingerPrint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set Your Fingerprint',
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 30),
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
            const SizedBox(height: 30),
            const Image(
              image: AssetImage(tSetFingerPrintImg),
            ),
            const SizedBox(height: 80),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Please put your finger on the fingerprint scanner to get started.',
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xffE7E7E7),
                  ),
                  child: Text(
                    'Skip',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.urbanist(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //show
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          alignment: Alignment.center,
                          actionsAlignment: MainAxisAlignment.center,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 180,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    child: const Image(
                                      image: AssetImage(tSuccessImg),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Text(
                                    'Congratulations!',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.urbanist(
                                      textStyle:
                                          Theme.of(context).textTheme.subtitle1,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Text(
                                    'Your account is ready to use. You will be redirected to the Home page in a few seconds..',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.urbanist(
                                      textStyle:
                                          Theme.of(context).textTheme.subtitle1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  const Center(
                                    child: SpinKitCircle(
                                      color: primaryColor,
                                      size: 60.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: primaryColor,
                    ),
                    child: Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
