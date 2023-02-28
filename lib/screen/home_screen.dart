import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/color_string.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/model/special_model.dart';
import 'package:my_app/screen/most_popular_screen.dart';
import 'package:my_app/screen/search_screen.dart';
import 'package:my_app/screen/special_offers_screen.dart';
import '../component/form_text_field.dart';
import '../component/item_card_special.dart';
import '../component/item_most_popular.dart';
import '../component/item_weekends_deals.dart';
import 'my_wishlist_screen.dart';
import 'notification_screen.dart';
import 'on_boarding_screen.dart';

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
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff757575),
                              ),
                            ),
                            Text(
                              "Chorn Thoen",
                              style: GoogleFonts.urbanist(
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(IconlyLight.notification),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, NotificationScreen.routeName);
                          },
                        ),
                        const SizedBox(width: 15),
                        IconButton(
                          icon: const Icon(IconlyLight.heart),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, MyWishlistScreen.routeName);
                          },
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.only(
                          left: 10,  right: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFFAFAFA),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, SearchScreen.routeName);
                            },
                            child: SizedBox(
                              width: 260,
                              child: Row(
                                children: [
                                  const Icon(
                                    IconlyLight.search,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Search",
                                    style: GoogleFonts.urbanist(
                                      textStyle:
                                          Theme.of(context).textTheme.subtitle1,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF9E9E9E),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              print("Filter"  );
                            },
                            icon: const Icon(IconlyLight.filter),
                          ),
                        ],
                      ),
                    ),
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
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, SpecialOffersScreen.routeName);
                          },
                          child: Text(
                            "See All",
                            style: GoogleFonts.urbanist(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const CardSpecial(),
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
                          cardIcons(context,
                              img: tJewelleryImg, name: "Jewelry"),
                          cardIcons(context, img: tKichenImg, name: "Kitchen"),
                          cardIcons(context, img: tToysImg, name: "Toys"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
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
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, MostPopularScreen.routeName);
                          },
                          child: Text(
                            "See All",
                            style: GoogleFonts.urbanist(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                    buildGestureDetector(context,
                        title: "Electronics", index: 4),
                    buildGestureDetector(context, title: "Watch", index: 5),
                    buildGestureDetector(context, title: "Jewelry", index: 6),
                    buildGestureDetector(context, title: "Kitchen", index: 7),
                    buildGestureDetector(context, title: "Toys", index: 8),
                    //  ItemMenu(index: 1, title: "All"),
                    //  ItemMenu(index: 2, title: "Clothes"),
                    //  ItemMenu(index: 3, title: "Shoes"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ItemMostPopular(),
              ),

              // CardItemsSpecial(),
            ],
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
        margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 8),
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
