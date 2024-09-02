// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/action_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("images/Signup Success Notification.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 220, bottom: 30),
                alignment: Alignment.center,
                child: Image.asset("images/Illustration(1).png"),
              ),
              Text(
                "Congrats!",
                style: GoogleFonts.poppins(color: Color(0xff15BE77),fontWeight: FontWeight.bold, fontSize: 28),
              ),
              SizedBox(height: 4,),
              Text(
                "Your Profile is Ready To Use",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: ActionButton(
                  title: "Try Order",
                  callBack: () {
                    Navigator.pushNamed(context, "/start");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
