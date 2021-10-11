import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const color = kPrimaryColor;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    //   HomePage(),
    //  Histroy(),
    //   ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String assetName = 'images/vector1.svg';
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //  icon: SvgPicture.asset('assets/images/navs4.svg'),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset('assets/images/navm.svg'),
            label: 'Histroy',
            backgroundColor: color,
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset('assets/images/navs1.svg'),
            // icon: ImageIcon(AssetImage('images/vector8.png')),
            label: 'Profile',
            backgroundColor: color,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        // backgroundColor: kPrimaryColor.withGreen(5),
        currentIndex: _selectedIndex,
        // selectedItemColor: kPColor[20],
        // unselectedIconTheme: ,
        selectedIconTheme: IconThemeData(color: Colors.amber),
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        iconSize: 30,
        // elevation: 30,
      ),
    );
  }
}
