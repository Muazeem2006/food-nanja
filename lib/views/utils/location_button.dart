// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationButton extends StatelessWidget {
  final VoidCallback callBack;
  const LocationButton({
    super.key, required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Color(0xfff6f6f6),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          "Set Location",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
