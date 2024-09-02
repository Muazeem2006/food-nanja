// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_ninja/views/utils/action_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("images/Pattern(1).png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xffFF9012).withOpacity(0.1),
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios, color: Color(0xffDA6317)),
                  ),
                ),
                Text(
                  "Fill in your bio to get\nstarted",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "This data will be displayed in your account\nprofile for security",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: _fnameController,
                  keyboardType: TextInputType.name,
                  autocorrect: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: "First Name",
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _lnameController,
                  keyboardType: TextInputType.name,
                  autocorrect: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: "Last Name",
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.number,
                  autocorrect: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: "Mobile Number",
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ActionButton(
                    title: "Next",
                    callBack: () {
                      Navigator.pushNamed(context, "/payment");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
