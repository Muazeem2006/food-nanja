// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../auth/login_screen.dart';
import '../utils/action_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<Map<String, dynamic>> pageMap = [
    {
      "image": "images/Illustartion.png",
      "heading": "Find your Comfort\nFood Here",
      "sub_heading":
          "Here You Can find a chef or for every\ntaste and color. Enjoy!",
    },
    {
      "image": "images/Illustration.png",
      "heading": "Food Ninja is Where Your\nComfort Food Lives",
      "sub_heading": "Enjoy a fast and smooth food delivery at\nyour doorstep",
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: List.generate(pageMap.length, (index) {
            return Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Image.asset(
                      pageMap.elementAt(index)["image"],
                      fit: BoxFit.cover,
                      height: 400,
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      pageMap.elementAt(index)["heading"],
                      style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    pageMap.elementAt(index)["sub_heading"],
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ActionButton(
                    title: 'Next',
                    callBack: () {
                      if (_currentPage == 1) {
                        // Navigate to a different page using MaterialPageRoute
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      } else {
                        // Go to the next page
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
