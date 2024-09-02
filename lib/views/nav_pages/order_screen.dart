// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/views/utils/location_button.dart';
import 'package:food_ninja/views/utils/order_card.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("images/Pattern.png"),
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
                  "Order details",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  padding: EdgeInsets.only(top: 20),
                  itemBuilder: (context, i) => OrderCard(
                    name: "Herbal Pancake",
                    desc: "Warung Herbal",
                    image: "images/Menu Photo.png",
                    price: "\$35",
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff53E88B),
              Color(0xff15BE77),
            ],
          ),
          image: DecorationImage(
            image: AssetImage("images/Payment-pattern.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "120 \$",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Charge",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "10 \$",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "20 \$",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "150 \$",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            LocationButton(callBack: () {}),
          ],
        ),
      ),
    );
  }
}
