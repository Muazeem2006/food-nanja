import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCard extends StatelessWidget {
  final String name;
  final String desc;
  final String image;
  final String price;
  const MenuCard({
    super.key,
    required this.name,
    required this.desc,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          desc,
          style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
        ),
        trailing: Text(
          price,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: const Color(0xffFF9012),
          ),
        ),
      ),
    );
  }
}
