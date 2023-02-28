import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/image_string.dart';

import '../common/color_string.dart';
import '../component/item_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static const String routeName = "notification_screen";

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
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
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
              const ItemNotification(
                title: "30% Special Discount!",
                subtitle: "Special promotion only valid today",
                svgIcon: tDiscountIcon,
              ),
              Text(
                "Yesterday",
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
              const ItemNotification(
                title: "Top Up E-Wallet Successful!",
                subtitle: "You have to top up your e-wallet",
                svgIcon: tWalletIcon,
              ),
              const ItemNotification(
                title: "New Services Available!",
                subtitle: "Now you can track orders in real time",
                svgIcon: tLocationIcon,
              ),
              Text(
                "December 22,2022",
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
              const ItemNotification(
                title: "Credit Card Connected!",
                subtitle: "Credit Card has been linked!",
                svgIcon: tCreditCardIcon,
              ),
              const ItemNotification(
                title: "Account Setup Successful!",
                subtitle: "Your account has been created!",
                svgIcon: tProfileIcon,
              ),
              const ItemNotification(
                title: "Top Up E-Wallet Successful!",
                subtitle: "You have to top up your e-wallet",
                svgIcon: tWalletIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

