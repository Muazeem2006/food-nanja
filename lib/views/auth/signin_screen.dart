// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_ninja/views/utils/action_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/custom_field.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool isSignin = false;
  bool isObscure = false;
  bool rememberEmail = false;
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
                  "Signin To Your Account",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 40),
                CustomField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  hint: "Your Name...",
                  prefix: Icon(Icons.person_4),
                ),
                SizedBox(height: 10),
                CustomField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  hint: "Email",
                  prefix: Icon(Icons.email),
                ),
                SizedBox(height: 10),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      CheckboxListTile(
                        dense: true,
                        value: isSignin,
                        onChanged: (value) {
                          setState(() {
                            isSignin = value!;
                          });
                        },
                        title: Text(
                          "Keep Me Signed In",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Color(0xff53E88B),
                      ),
                      CheckboxListTile(
                        dense: true,
                        value: rememberEmail,
                        onChanged: (value) {
                          setState(() {
                            rememberEmail = value!;
                          });
                        },
                        title: Text(
                          "Email Me About Special Pricing",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: Color(0xff53E88B),
                      ),
                    ],
                  ),
                ),
                ActionButton(
                  title: "Create Account",
                  callBack: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'already have an account?',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    color: Color(0xff53E88B),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
