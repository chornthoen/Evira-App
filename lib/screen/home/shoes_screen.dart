import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/color_string.dart';
import '../../component/item_shoes.dart';

class ShoesScreen extends StatefulWidget {
  const ShoesScreen({Key? key}) : super(key: key);
  static const String routeName = "shoes_screen";

  @override
  State<ShoesScreen> createState() => _ShoesScreenState();
}

class _ShoesScreenState extends State<ShoesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shoes",
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
          child: ItemShoes(),
        ),

      ),
    );
  }
}
