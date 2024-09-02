// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/views/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatelessWidget {
  final String name;
  final String desc;
  final String image;
  final String price;
  const OrderCard({
    Key? key,
    required this.name,
    required this.desc,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secColor,
        ),
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      onDismissed: (direction) {
        // Perform delete operation here
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        // margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2,
            ),
            BoxShadow(
              offset: Offset(2, 0),
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      desc,
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      price,
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: const Color(0xff53E88B),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Color(0xff53E88B),
                          size: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "1",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Color(0xff53E88B),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
