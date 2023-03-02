import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/component/item_toys.dart';

import '../../common/color_string.dart';

class ToysScreen extends StatefulWidget {
  const ToysScreen({Key? key}) : super(key: key);
  static const String routeName = "toys_screen";

  @override
  State<ToysScreen> createState() => _ToysScreenState();
}

class _ToysScreenState extends State<ToysScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toys",
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
          child: ItemToys(),
        ),

      ),
    );
  }
}
