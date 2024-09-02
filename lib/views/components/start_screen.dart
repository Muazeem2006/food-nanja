// ignore_for_file: prefer_const_constructors

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../nav_pages/order_screen.dart';
import '../nav_pages/chat_screen.dart';
import '../nav_pages/home_screen.dart';
import '../nav_pages/profile_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
 final List navPages = [
    const HomeScreen(),
    const ProfileScreen(),
    const OrderScreen(),
    const ChatScreen(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPages.elementAt(selectedIndex),
      bottomNavigationBar: FloatingNavbar(
        selectedBackgroundColor: Color(0xffd3e3db),
        selectedItemColor: Color(0xff388e3c),
        unselectedItemColor: Colors.grey.shade400,
        backgroundColor: Colors.white,
        onTap: (int val) => setState(() => selectedIndex = val),
        currentIndex: selectedIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.person_2_rounded, title: 'Profile'),
          FloatingNavbarItem(icon: Icons.shopping_cart_rounded, title: 'Orders'),
          FloatingNavbarItem(icon: Icons.textsms_outlined, title: 'Chats'),
        ],
      ),
    );
  }
}
