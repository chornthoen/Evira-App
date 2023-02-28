import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/component/button_widget.dart';
import 'package:my_app/model/on_boarding_model.dart';
import 'package:my_app/screen/let_you_in.dart';

import '../model/special_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  static const String routeName = '/onBoarding';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onBoardingModel.length,
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 50, left: 20, right: 20, bottom: 20),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(onBoardingModel[index].image),
                        height: 400,

                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Text(
                          onBoardingModel[index].title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            fontSize: 33,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < onBoardingModel.length; i++)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  height: 10,
                  width: _currentPage == i ? 30 : 10,
                  decoration: BoxDecoration(
                    color: _currentPage == i
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: ButtonWidget(
              text: _currentPage == onBoardingModel.length - 1
                  ? 'Get Started'
                  : 'Next',
              onPressed: () {
                if (_currentPage == onBoardingModel.length - 1) {
                  Navigator.pushNamed(context, LetYouIn.routeName);
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.ease,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

