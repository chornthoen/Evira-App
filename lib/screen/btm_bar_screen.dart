import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/color_string.dart';
import 'package:my_app/screen/cart_screen.dart';
import 'package:my_app/screen/home_screen.dart';
import 'package:my_app/screen/orders_screen.dart';
import 'package:my_app/screen/profile_screen.dart';
import 'package:my_app/screen/wallet_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);
  static const String routeName = 'bottom_bar_screen';

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final List _page = [
    const HomeScreen(),
    const CartScreen(),
    const OrdersScreen(),
    const WalletScreen(),
    const ProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _page[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 1 ? IconlyBold.bag : IconlyLight.bag),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 2 ? IconlyBold.buy : IconlyLight.buy),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 3 ? IconlyBold.wallet : IconlyLight.wallet),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 4
                  ? IconlyBold.profile
                  : IconlyLight.profile),
              label: 'Profile',
            ),
          ],
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.urbanist(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
          unselectedLabelStyle: GoogleFonts.urbanist(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF9E9E9E),
          ),
          unselectedItemColor: const Color(0xFF9E9E9E),
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          onTap: _onItemTapped,
        ));
  }
}
