// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_ninja/views/components/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Onboarding.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: Image.asset("images/Logo.png")),
      ),
    );
  }
}
