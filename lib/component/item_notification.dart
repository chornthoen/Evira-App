import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/color_string.dart';

class ItemNotification extends StatelessWidget {
  const ItemNotification({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.svgIcon,
    this.onPress,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String svgIcon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 24),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.05),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 10),
              )
            ]),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: primaryColor),
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(svgIcon),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.urbanist(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.urbanist(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF616161),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
