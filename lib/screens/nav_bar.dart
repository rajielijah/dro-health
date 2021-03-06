import 'package:drohealth/constant/colors.dart';
import 'package:drohealth/screens/community_screen.dart';
import 'package:drohealth/screens/doctor_screen.dart';
import 'package:drohealth/screens/home_sreen.dart';
import 'package:drohealth/screens/pharmacy_view.dart';
import 'package:drohealth/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const color = DROMiddleBlue;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DoctorScreen(),
    Pharmacy(),
    CommunityScreen(),
    ProfileScreen()
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
            // icon: ImageIcon(AssetImage('assets/images/nurse.png')),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset('assets/images/navm.svg'),
            icon: ImageIcon(AssetImage('assets/images/nurse.png')),
            label: 'Doctors',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            // icon: ImageIcon.asset('assets/images/navs1.svg'),
            icon: ImageIcon(AssetImage('assets/images/add-to-cart.png')),
            label: 'Pharmacy',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            // icon: ImageIcon.asset('assets/images/navs1.svg'),
            icon: ImageIcon(AssetImage('assets/images/message.png')),
            label: 'Community',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            // icon: ImageIcon.asset('assets/images/navs1.svg'),
            icon: ImageIcon(AssetImage('assets/images/user.png')),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        currentIndex: _selectedIndex,
        selectedItemColor: DROPurple,
        // unselectedIconTheme: ,
        selectedIconTheme: IconThemeData(color: DROPurple),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        iconSize: 30,
        // elevation: 30,
      ),
    );
  }
}
