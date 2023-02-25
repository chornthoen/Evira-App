import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/color_string.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/component/button_widget.dart';
import 'package:my_app/screen/create_new_pin.dart';

import '../component/form_text_field.dart';

class FillYourProfile extends StatefulWidget {
  const FillYourProfile({Key? key}) : super(key: key);
  static const routeName = '/fill_your_profile';

  @override
  State<FillYourProfile> createState() => _FillYourProfileState();
}

class _FillYourProfileState extends State<FillYourProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fill Your Profile',
          style: GoogleFonts.urbanist(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(tFillProfileImg),
                      backgroundColor: Colors.white,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Icon(
                          Icons.mode_edit_outline_outlined,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const TextFieldForm(
                hintText: 'Full Name',
              ),
              const TextFieldForm(
                hintText: 'Nick Name',
              ),
              const TextFieldForm(
                hintText: 'Date of Birth',
                suffixIcon: Icon(
                  IconlyLight.calendar,
                ),
              ),
              const TextFieldForm(
                hintText: 'Email',
                suffixIcon: Icon(
                  Icons.email,
                )
              ),
              const TextFieldForm(
                hintText: 'Phone Number',
                suffixIcon: Icon(
                  Icons.phone_android_rounded,
                )
              ),
              const TextFieldForm(
                hintText: 'Gender',
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ButtonWidget(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, CreateNewPIN.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
