// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hint,
    this.prefix = const SizedBox(width: 10),
    this.suffix = const SizedBox(width: 10),
    this.obscureText = false,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hint;
  final Widget prefix;
  final Widget suffix;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          alignment: Alignment.center,
          child: TextFormField(
            obscureText: obscureText,
            controller: controller,
            keyboardType: keyboardType,
            autocorrect: true,
            decoration: InputDecoration(
              prefixIcon: prefix,
              suffixIcon: suffix,
              prefixIconColor: Color(0xff53E88B),
              suffixIconColor: Color(0xff53E88B),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Color(0xffF4F4F4),
                ),
              ),
              contentPadding: EdgeInsets.only(left: 20),
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }
}
