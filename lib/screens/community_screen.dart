import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Community Page",
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
