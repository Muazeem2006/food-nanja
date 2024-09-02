// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String image;
  final String driveTime;
  final VoidCallback callBack;
  const RestaurantCard({
    super.key,
    required this.name,
    required this.image,
    required this.driveTime, required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          children: [
            Align(
              child: Image.asset(
                image,
                width: 70,
                height: 70,
              ),
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              driveTime,
              style: GoogleFonts.poppins(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
