// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "What do you want to order?",
                prefixIcon: Icon(Icons.search),
                hintStyle: GoogleFonts.poppins(
                  color: Color(0xffFF9012),
                ),
                prefixIconColor: Color(0xffFF9012),
                filled: true,
                fillColor: Color(0xffFF9012).withOpacity(0.1),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(
                    color: Color(0xffFF9012).withOpacity(0.1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(
                    color: Color(0xffFF9012),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 25),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 237, 222),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Badge(
                child: Image.asset("images/Filter.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
