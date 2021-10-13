import 'package:drohealth/constant/colors.dart';
import 'package:drohealth/screens/cart_views.dart';
import 'package:drohealth/widget/categoris_widgte.dart';
import 'package:drohealth/widget/suggestion_widget.dart';
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
                // height: height,
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          suggestionWidget(
                              context,
                              Image.asset(
                                "assets/images/sup2.png",
                                height: 127,
                                width: 168,
                                fit: BoxFit.fitWidth,
                              ),
                              "Paracetamol",
                              "Table * 500mg",
                              "\$350.00"),
                          suggestionWidget(
                              context,
                              Image.asset(
                                "assets/images/sup5.png",
                                height: 127,
                                width: 168,
                                fit: BoxFit.fitWidth,
                              ),
                              "Doliprane",
                              "Capsule * 1000mg",
                              "\$350.00"),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          suggestionWidget(
                              context,
                              Image.asset(
                                "assets/images/sup4.png",
                                height: 127,
                                width: 168,
                                fit: BoxFit.fitWidth,
                              ),
                              "Paracetamol",
                              "Table * 500mg",
                              "\$350.00"),
                          suggestionWidget(
                              context,
                              Image.asset(
                                "assets/images/sup3.png",
                                height: 127,
                                width: 168,
                                fit: BoxFit.fitWidth,
                              ),
                              "Ibuprofen",
                              "Table * 200mg",
                              "\$350.00"),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          suggestionWidget(
                              context,
                              Image.asset(
                                "assets/images/sup2.png",
                                height: 127,
                                width: 168,
                                fit: BoxFit.fitWidth,
                              ),
                              "Panadol",
                              "Table * 500mg",
                              "\$350.00"),
                          suggestionWidget(
                              context,
                              Image.asset(
                                "assets/images/sup1.png",
                                height: 127,
                                width: 168,
                                fit: BoxFit.fitWidth,
                              ),
                              "Ibuprofen",
                              "Table * 400mg",
                              "\$350.00"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  child: Container(
                    height: 43,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 5),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFFE5366A),
                          const Color(0xFFFE806F)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 0.1],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Checkout',
                            style: TextStyle(
                                fontFamily: "Proxima Nova",
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w900),
                          ),
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.amber,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
