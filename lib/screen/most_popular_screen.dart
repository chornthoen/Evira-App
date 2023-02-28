import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/color_string.dart';
import '../component/item_most_popular.dart';

class MostPopularScreen extends StatefulWidget {
  const MostPopularScreen({Key? key}) : super(key: key);
  static const String routeName = "popular";

  @override
  State<MostPopularScreen> createState() => _MostPopularScreenState();
}

class _MostPopularScreenState extends State<MostPopularScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "Most Popular",
          style: GoogleFonts.urbanist(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
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
          ],
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

}
