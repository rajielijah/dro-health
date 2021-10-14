import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Profile Page",
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
