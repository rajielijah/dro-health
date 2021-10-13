import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
                  Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
