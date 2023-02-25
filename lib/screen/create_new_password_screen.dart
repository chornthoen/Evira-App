import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/component/button_widget.dart';

import '../common/color_string.dart';
import '../component/check_box_widget.dart';
import '../component/form_text_field.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);
  static const String routeName = '/create_new_password';

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create New Password",
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Image(
                  image: AssetImage(tCreateNewPassword),
                  height: 250,
                  width: 250,
                ),
              ),
              Text(
                "Create Your New Password",
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const TextFieldForm(
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                  Icons.visibility_off_rounded,
                ),
              ),
              const TextFieldForm(
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                  Icons.visibility_off_rounded,
                ),
              ),
              const CheckBoxWidget(),
              const SizedBox(height: 120),
              ButtonWidget(
                text: "Continue",
                onPressed: () {
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: const Image(
                                    image: AssetImage(tSuccessPassword),
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
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
