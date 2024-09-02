// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback callBack;
  const SocialButton({
    super.key,
    required this.icon,
    required this.title,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: 150,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xffF4F4F4)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(icon),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
