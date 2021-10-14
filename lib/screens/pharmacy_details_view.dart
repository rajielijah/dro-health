import 'package:drohealth/constant/colors.dart';
import 'package:drohealth/screens/cart_views.dart';
import 'package:drohealth/screens/nav_bar.dart';
import 'package:drohealth/screens/pharmacy_view.dart';
import 'package:drohealth/widget/suggestion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PharamcyDetailScreen extends StatefulWidget {
  const PharamcyDetailScreen({Key? key}) : super(key: key);

  @override
  _PharamcyDetailScreenState createState() => _PharamcyDetailScreenState();
}

class _PharamcyDetailScreenState extends State<PharamcyDetailScreen> {
  int _counter = 1;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
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
              SizedBox(
                height: 20,
              ),
              ListTile(
                minVerticalPadding: 0,
                minLeadingWidth: 20,
                leading: Image.asset("assets/images/det1.png"),
                title: Text(
                  "SOLD BY",
                  style: TextStyle(
                      color: textColor,
                      fontFamily: "Proxima Nova",
                      fontSize: 15),
                ),
                subtitle: Text(
                  "Emzor Pharmaceuticals",
                  style: TextStyle(
                      fontFamily: "Proxima Nova",
                      fontWeight: FontWeight.w700,
                      color: textColor[10]),
                ),
                trailing: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.favorite_border,
                    color: DROPurple,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Container(
                      width: 96,
                      height: 40,
                      decoration: BoxDecoration(
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: textColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                              onTap: () {
                                decrementCounter();
                              },
                              child: Text(
                                "-",
                                style: TextStyle(
                                  fontFamily: "Proxima Nova",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                          Text(
                            "$_counter",
                            style: TextStyle(
                              fontFamily: "Proxima Nova",
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                incrementCounter();
                              },
                              child: Text(
                                "+",
                                style: TextStyle(
                                  fontFamily: "Proxima Nova",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Pack(s)",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Proxima Nova",
                          fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      width: width / 4,
                    ),
                    // Text("wefs"),
                    // RichText(
                    //   text: TextSpan(
                    //     text: 'Hello ',

                    //     children: <TextSpan>[
                    //       TextSpan(
                    //           text: 'Geeks',
                    //           style: TextStyle(fontWeight: FontWeight.bold)),
                    //     ],
                    //   ),
                    // ),
                    RichText(
                        text: TextSpan(
                            text: "\$",
                            style: Theme.of(context).textTheme.subhead,
                            children: [
                          TextSpan(
                              text: "600",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  fontFamily: "Proxima Nova")),
                          TextSpan(
                              text: ".00",
                              style: TextStyle(
                                  fontFamily: "Proxima Nova",
                                  fontWeight: FontWeight.w700)),
                        ]))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "PRODUCT DETAILS",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/det5.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PACK SIZE",
                              style: TextStyle(
                                  color: textColor,
                                  fontFamily: "Proxima Nova",
                                  fontSize: 15),
                            ),
                            Text(
                              "8 x 12 tablets (96)",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Proxima Nova",
                                  fontWeight: FontWeight.w700,
                                  color: textColor[10]),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/det3.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PRODCUT ID",
                              style: TextStyle(
                                  color: textColor,
                                  fontFamily: "Proxima Nova",
                                  fontSize: 15),
                            ),
                            Text(
                              "PRO23648856",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Proxima Nova",
                                  fontWeight: FontWeight.w700,
                                  color: textColor[10]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/det4.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CONSTITUENTS",
                              style: TextStyle(
                                  color: textColor,
                                  fontFamily: "Proxima Nova",
                                  fontSize: 15),
                            ),
                            Text(
                              "Paracetamol",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Proxima Nova",
                                  fontWeight: FontWeight.w700,
                                  color: textColor[10]),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: width / 5.3,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/det2.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "DISPENSED IN",
                              style: TextStyle(
                                  color: textColor,
                                  fontFamily: "Proxima Nova",
                                  fontSize: 15),
                            ),
                            Text(
                              "Packs",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Proxima Nova",
                                  fontWeight: FontWeight.w700,
                                  color: textColor[10]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "1 pack of Emzor Paracetamol (500mg) contains 8 \nunits of 12 tablets.",
                    style: TextStyle(fontFamily: "Proxima Nova", fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Similiar Products',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w700),
                  ),
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        context: context,
                        builder: (context) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Emzor Paracetamol has been successfully \n                       added to cart!',
                                style: TextStyle(
                                    fontFamily: "Proxima Nova",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CartScreen()));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                        colors: [
                                          const Color(0xFF7A08FA),
                                          const Color(0xFFAD3BFC)
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        stops: [0.0, 0.1],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'VIEW CART',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: "Proxima Nova",
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 18),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyStatefulWidget()));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: width,
                                    decoration: BoxDecoration(
                                        // color: Colors.grey[400],
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(color: DROPurple)),
                                    child: Center(
                                      child: Text(
                                        "CONTINUE SHOPPING",
                                        style: TextStyle(
                                            color: DROPurple,
                                            fontSize: 20,
                                            fontFamily: "Proxima Nova",
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: Container(
                    height: 50,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF7A08FA),
                          const Color(0xFFAD3BFC)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 0.1],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart_outlined,
                              color: Colors.white),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
