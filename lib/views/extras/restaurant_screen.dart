// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/views/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({ Key? key }) : super(key: key);

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: SizedBox(),
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/Photo Menu 2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF4F4F4),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Color(0xffFF9012).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                      
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: mainColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Popular",
                          style: GoogleFonts.poppins(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: Color(0xffFF9012).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Member Gold",
                              style: GoogleFonts.poppins(
                                color: Color(0xffFF9012),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: Color(0xffFF9012).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Member Gold",
                              style: GoogleFonts.poppins(
                                color: Color(0xffFF9012),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(left: 25, top: 12, bottom: 12),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Anam Wusono",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: Color(0xff388e3c),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Anamwp66@gmail.com",
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 25),
                    child: Text(
                      "Favorite",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   itemCount: 5,
                  //   padding: EdgeInsets.all(25),
                  //   itemBuilder: (context, i) => MenuCard(
                  //     name: "Herbal Pancake",
                  //     desc: "Warung Herbal",
                  //     image: "images/Menu Photo.png", price: "\$35",
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
 
  }
}