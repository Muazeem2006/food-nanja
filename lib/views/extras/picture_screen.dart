// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_ninja/views/utils/action_button.dart';
import 'package:google_fonts/google_fonts.dart';

class PictureScreen extends StatefulWidget {
  const PictureScreen({Key? key}) : super(key: key);

  @override
  _PictureScreenState createState() => _PictureScreenState();
}

class _PictureScreenState extends State<PictureScreen> {
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
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xffFF9012).withOpacity(0.1),
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffDA6317),
                    ),
                  ),
                ),
                Text(
                  "Upload Your Photo\nProfile",
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
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Image.asset("images/Photo.png"),
                ),      Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: ActionButton(
                    title: "Next",
                    callBack: () {
                      Navigator.pushNamed(context, "/location");
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
