import 'package:flutter/material.dart';
import 'package:my_app/common/image_string.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screen/on_boarding_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/welcome';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, OnBoardingScreen.routeName);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(tWelcomeImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      height: 450,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.0),
                            Colors.black.withOpacity(0.9),
                          ],
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 28,vertical: 20),
                  height: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Welcome to 👋',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Evira',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          textStyle: Theme.of(context).textTheme.headline6,
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'The best e-commerce app of the century for your daily needs!',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          textStyle: Theme.of(context).textTheme.headline6,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
