import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Home Page",
            style: TextStyle(
                fontFamily: "Proxima Nova",
                fontWeight: FontWeight.w600,
                fontSize: 30),
          ),
        ),
      ),
    );
  }
}
