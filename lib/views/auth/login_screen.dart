// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_ninja/views/utils/action_button.dart';
import 'package:food_ninja/views/utils/custom_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("images/Pattern.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "images/Logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Login To Your Account",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 40),
                CustomField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  hint: "Email",
                  prefix: Icon(Icons.email),
                ),
                SizedBox(height: 20),
                CustomField(
                  obscureText: isObscure,
                  controller: _passwordController,
                  keyboardType: TextInputType.streetAddress,
                  hint: "Password",
                  prefix: Icon(Icons.lock),
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon((isObscure)
                          ? Icons.visibility_off
                          : Icons.visibility)),
                ),
                SizedBox(height: 20),
                Text(
                  "Or Continue With",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialButton(
                      icon: 'images/facebook.png',
                      title: 'Facebook',
                      callBack: () {},
                    ),
                    SocialButton(
                      icon: 'images/google-icon.png',
                      title: 'Google',
                      callBack: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Forgot Your Password?',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.lineThrough,
                      color: Color(0xff53E88B)),
                ),
                SizedBox(height: 20),
                ActionButton(
                  title: "Login",
                  callBack: () {
                    Navigator.pushNamed(context, "/signin");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
