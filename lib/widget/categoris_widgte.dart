import 'package:flutter/material.dart';

Widget categoriesWidget(BuildContext context, Image image, String text) {
  return Container(
    height: 90,
    width: 130,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Stack(
      children: [
        image,
        Positioned(
          top: 37,
          left: 40,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontFamily: "Proxima Nova"),
          ),
        )
      ],
    ),
  );
}
