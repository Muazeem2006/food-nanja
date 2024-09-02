import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VoucherCard extends StatelessWidget {
  final String count;
  const VoucherCard({
    super.key, required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 2),
            blurRadius: 3,
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "images/Voucher Icon.png",
            height: 50,
            width: 50,
          ),
          Text(
            "You Have $count Voucher",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
