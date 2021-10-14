import 'package:drohealth/screens/pharmacy_details_view.dart';
import 'package:flutter/material.dart';

Widget suggestionWidget(
    BuildContext context, Image image, String drug, String type, String price) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PharamcyDetailScreen()));
      },
      child: Container(
        height: 215,
        width: 168,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 16.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                drug,
                style: TextStyle(
                    // color: Colors.white,
                    fontFamily: "Proxima Nova",
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8),
              child: Text(
                type,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Proxima Nova",
                    fontSize: 15,
                    color: Colors.black45),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                price,
                style: TextStyle(
                    fontFamily: "Proxima Nova",
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
