import 'package:flutter/material.dart';

class PharamcyDetailScreen extends StatelessWidget {
  const PharamcyDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              height: 100,
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [const Color(0xFF7A08FA), const Color(0xFFAD3BFC)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.0, 0.1],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pharmacy',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: "Proxima Nova",
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: width / 2,
                    ),
                    Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset("assets/images/det6.png"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Emzor Paracetamol",
              style: TextStyle(
                  fontFamily: "Proxima Nova",
                  fontWeight: FontWeight.w800,
                  fontSize: 23),
            ),
            Text(
              "Tablet - 500mg",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Proxima Nova",
                  fontSize: 20,
                  color: Colors.black45),
            ),
          ],
        ),
      ),
    ));
  }
}
