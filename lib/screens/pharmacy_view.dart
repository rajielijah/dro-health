import 'package:drohealth/constant/colors.dart';
import 'package:flutter/material.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 150,
                width: width,
                decoration: BoxDecoration(
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Pharmacy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: "Proxima Nova",
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Icon(Icons.favorite_border_outlined,
                              color: Colors.white),
                          SizedBox(
                            width: 10,
                          ),
                          ImageIcon(AssetImage("assets/images/delivery.png"),
                              color: Colors.white)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(
                    "Delivery in ",
                    style: TextStyle(fontFamily: "Proxima Nova"),
                  ),
                  Text(
                    "Lagos, NG",
                    style: TextStyle(
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
