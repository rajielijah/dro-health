import 'package:flutter/material.dart';

Widget categoriesWidget(BuildContext context, Image image, String text) {
  return Container(
    // height: 190,
    width: 180,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Stack(
      children: [
        image,
        Positioned(
          top: 53,
          left: 60,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: "Proxima Nova"),
          ),
        )
      ],
    ),
  );
}
