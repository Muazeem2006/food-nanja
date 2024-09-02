import 'package:flutter/material.dart';
import 'views/components/start_screen.dart';
import 'views/extras/restaurant_screen.dart';
import 'views/extras/success_screen.dart';

import 'views/components/splash_screen.dart';
import 'views/auth/login_screen.dart';
import 'views/auth/signin_screen.dart';
import 'views/auth/signup_screen.dart';
import 'views/extras/location_screen.dart';
import 'views/extras/payment_screen.dart';
import 'views/extras/picture_screen.dart';
import 'views/extras/upload_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        "/login": (context) {
          return const LoginScreen();
        },
        "/signin": (context) {
          return const SigninScreen();
        },
        "/signup": (context) {
          return const SignupScreen();
        },
        "/payment": (context) {
          return const PaymentScreen();
        },
        "/upload": (context) {
          return const UploadScreen();
        },
        "/picture": (context) {
          return const PictureScreen();
        },
        "/location": (context) {
          return const LocationScreen();
        },
        "/signup-success": (context) {
          return const SuccessScreen();
        },
        "/start": (context) {
          return const StartScreen();
        },
        "/restaurant": (context) {
          return const RestaurantScreen();
        },
      },
    );
  }
}
