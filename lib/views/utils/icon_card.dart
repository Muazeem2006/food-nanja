import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final String image;
  final VoidCallback callBack;
  const IconCard({
    super.key,
    required this.image, required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(image),
        ),
      ),
    );
  }
}
