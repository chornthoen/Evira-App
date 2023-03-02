import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/component/item_jewelry.dart';

import '../../common/color_string.dart';
import '../../component/item_watch.dart';

class JewelryScreen extends StatefulWidget {
  const JewelryScreen({Key? key}) : super(key: key);
  static const String routeName = "jewelry_screen";

  @override
  State<JewelryScreen> createState() => _JewelryScreenState();
}

class _JewelryScreenState extends State<JewelryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jewelry",
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
      body: const SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(20.0),
          child: ItemJewelry(),
        ),

      ),
    );
  }
}
