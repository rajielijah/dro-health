import 'package:drohealth/constant/colors.dart';
import 'package:drohealth/widget/categoris_widgte.dart';
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
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height,
                color: Colors.white70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "CATEGORIES",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 18,
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "VIEW ALL",
                            style: TextStyle(
                                color: DROMiddleBlue,
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          categoriesWidget(
                              context,
                              Image.asset("assets/images/category.png"),
                              "Headache"),
                          categoriesWidget(
                              context,
                              Image.asset("assets/images/category4.png"),
                              "Supplements"),
                          categoriesWidget(context,
                              Image.asset("assets/images/cate.png"), "Infacts"),
                          categoriesWidget(
                              context,
                              Image.asset("assets/images/category2.png"),
                              "Cough")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18),
                      child: Text(
                        "SUGGESTIONS",
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 18,
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
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
                            Image.asset(
                              "assets/images/sup1.png",
                              height: 127,
                              width: 168,
                              fit: BoxFit.fitWidth,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Paracetamol",
                                style: TextStyle(
                                    // color: Colors.white,
                                    fontFamily: "Proxima Nova",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, left: 8),
                              child: Text(
                                "Tablet * 500mg",
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
                                "\$350.00",
                                style: TextStyle(
                                    fontFamily: "Proxima Nova",
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
