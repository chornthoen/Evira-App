import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/component/item_new_arrivals.dart';
import 'package:my_app/component/item_weekends_deals.dart';

import '../common/color_string.dart';
import '../component/item_card_special.dart';

class SpecialOffersScreen extends StatefulWidget {
  const SpecialOffersScreen({Key? key}) : super(key: key);
  static const String routeName = "/special_offers_screen";

  @override
  State<SpecialOffersScreen> createState() => _SpecialOffersScreenState();
}

class _SpecialOffersScreenState extends State<SpecialOffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Special Offers",
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
            icon: const Icon(IconlyLight.moreCircle),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
          child: Column(
            children:const  [
              CardSpecial(),
               SizedBox(height: 20,),
              ItemWeekendDeal(),
              SizedBox(height: 20,),
              ItemNewArrivals(),
              SizedBox(height: 20,),
              ItemWeekendDeal(),
              SizedBox(height: 20,),
              ItemNewArrivals(),
            ],
          ),
        ),
      ),
    );
  }
}
