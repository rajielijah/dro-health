import 'package:drohealth/widget/categoris_widgte.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
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
                    'Categories',
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              categoriesWidget(context,
                  Image.asset("assets/images/category.png"), "Headache"),
              categoriesWidget(context,
                  Image.asset("assets/images/category4.png"), "Supplements"),
            ],
          ),
          Row(
            children: [
              categoriesWidget(
                  context, Image.asset("assets/images/cate.png"), "Infacts"),
              categoriesWidget(
                  context, Image.asset("assets/images/category2.png"), "Cough")
            ],
          )
        ],
      ),
    ));
  }
}
