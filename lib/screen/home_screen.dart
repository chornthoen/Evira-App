import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/color_string.dart';
import 'package:my_app/common/image_string.dart';

import '../component/form_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(tProfileImg),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning 👋",
                          style: GoogleFonts.urbanist(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff757575),
                          ),
                        ),
                        Text(
                          "Chorn Thoen",
                          style: GoogleFonts.urbanist(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(IconlyLight.notification),
                    const SizedBox(width: 15),
                    const Icon(IconlyLight.heart),
                  ],
                ),
                const TextFieldForm(
                  hintText: "Search",
                  prefixIcon: Icon(IconlyLight.search),
                  suffixIcon: Icon(IconlyLight.filter),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Special Offer",
                      style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffE7E7E7),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: const Image(
                          image: AssetImage(tProfileImg2),
                          height: 300,
                          width: 200,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 20,
                      bottom: 20,
                      child: Container(
                        width: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "30%",
                              style: GoogleFonts.urbanist(
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Today’s Special!",
                              style: GoogleFonts.urbanist(
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Get discount every order, only valid for today",
                              style: GoogleFonts.urbanist(
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardIcons(context, img: tClothImg, name: "Clothes"),
                      cardIcons(context, img: tShoesImg, name: "Shoes"),
                      cardIcons(context, img: tBagsImg, name: "Bags"),
                      cardIcons(context,
                          img: tElectronicsImg, name: "Electronics"),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardIcons(context, img: tWatchImg, name: "Watch"),
                      cardIcons(context, img: tJewelleryImg, name: "Jewelry"),
                      cardIcons(context, img: tKichenImg, name: "Kitchen"),
                      cardIcons(context, img: tToysImg, name: "Toys"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Most Popular",
                      style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildGestureDetector(context, title: "All", index: 0),
                      buildGestureDetector(context, title: "Clothes", index: 1),
                      buildGestureDetector(context, title: "Shoes", index: 2),
                      buildGestureDetector(context, title: "Bags", index: 3),
                      buildGestureDetector(context, title: "Electronics", index: 4),
                      buildGestureDetector(context, title: "Watch", index: 5),
                      buildGestureDetector(context, title: "Jewelry", index: 6),
                      buildGestureDetector(context, title: "Kitchen", index: 7),
                      buildGestureDetector(context, title: "Toys", index: 8),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector(BuildContext context,
      {required int index, required String title}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected != index ? selected = index : selected = 0;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: EdgeInsets.only(left: index == 0 ? 0 : 10),
        decoration: BoxDecoration(
          color: selected == index ? primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: primaryColor,
            width: 2,
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.urbanist(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontSize: 16,
            color: selected == index ? Colors.white : primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Column cardIcons(BuildContext context,
      {required String img, required String name}) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: const BoxDecoration(
            color: Color(0xffE7E7E7),
            shape: BoxShape.circle,
          ),
          child: Image(
            image: AssetImage(img),
            height: 30,
            width: 30,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: GoogleFonts.urbanist(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
