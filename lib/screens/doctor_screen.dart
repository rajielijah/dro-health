import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Doctor Page",
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
