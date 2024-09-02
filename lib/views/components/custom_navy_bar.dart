// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNavyBar extends StatefulWidget {
  const CustomNavyBar({
    super.key,
  });

  @override
  State<CustomNavyBar> createState() => _CustomNavyBarState();
}

class _CustomNavyBarState extends State<CustomNavyBar> {
  int selectedNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
      ),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: NavyItem(context, i),
            );
          }),
    );
  }

  Widget NavyItem(BuildContext context, int i) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.amber.shade50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("images/Home.png"),
          SizedBox(
            width: 5,
          ),
          Text(
            "Profile",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
