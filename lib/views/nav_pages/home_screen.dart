// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/menu_card.dart';
import '../utils/restaurant_card.dart';
import '../utils/search_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> restaurantData = [
    {
      "name": "Vegan Resto",
      "image": "images/Resturant Image.png",
      "driveTime": "12 Mins"
    },
    {
      "name": "Healthy Food",
      "image": "images/Restaurant Image.png",
      "driveTime": "8 Mins"
    },
    {
      "name": "Good Food",
      "image": "images/Restaurant Image (1).png",
      "driveTime": "12 Mins"
    },
    {
      "name": "Smart Resto",
      "image": "images/Restaurant Image (2).png",
      "driveTime": "8 Mins"
    },
    {
      "name": "Crispy Taste",
      "image": "images/Restaurant Image (3).png",
      "driveTime": "12 Mins"
    },
    {
      "name": "Smart Choice",
      "image": "images/Restaurant Image (4).png",
      "driveTime": "8 Mins"
    },
  ];

  List<Map<String, dynamic>> menuData = [
    {
      "name": "Herbal Pancake",
      "image": "images/Menu Photo.png",
      "desc": "Warung Herbal",
      "price": "\$20"
    },
    {
      "name": "Fruit Salad",
      "image": "images/Photo Menu.png",
      "desc": "Wijie Resto",
      "price": "\$30"
    },
    {
      "name": "Green Noodle",
      "image": "images/Menu Photo (3).png",
      "desc": "Noodle Home",
      "price": "\$30"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffF4F4F4),
            image: DecorationImage(
              image: AssetImage("images/Pattern(1).png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find Your\nFavorite Food",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0, 5),
                                blurRadius: 5,
                              )
                            ],
                          ),
                          child: Badge(
                            child: Image.asset("images/Icon Notifiaction.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SearchInput(searchController: _searchController),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Image.asset(
                    "images/Promo Advertising.png",
                    width: double.maxFinite,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 25, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nearest Restaurant",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "View More",
                          style: GoogleFonts.poppins(color: Color(0xffFF9012)),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      restaurantData.length,
                      (index) => RestaurantCard(
                        name: restaurantData.elementAt(index)["name"],
                        image: restaurantData.elementAt(index)["image"],
                        driveTime: restaurantData.elementAt(index)["driveTime"],
                        callBack: () {
                          Navigator.pushNamed(context, "/restaurant");
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 25, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Menu",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "View More",
                          style: GoogleFonts.poppins(color: Color(0xffFF9012)),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  padding: EdgeInsets.only(right: 25),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: menuData.length,
                  itemBuilder: (BuildContext context, int i) => MenuCard(
                    name: menuData.elementAt(i)["name"],
                    desc: menuData.elementAt(i)["desc"],
                    image: menuData.elementAt(i)["image"],
                    price: menuData.elementAt(i)["price"],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
