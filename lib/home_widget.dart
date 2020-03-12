import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:ivoirestation/consts/backgrounds.dart';
import 'package:ivoirestation/screens/fidel/fidelisation.dart';
import 'package:ivoirestation/screens/home/home.dart';
import 'package:ivoirestation/screens/profile/profile.dart';
import 'package:ivoirestation/screens/station/station.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Accueil(Colors.blue, "Accueil"),
    Station(Colors.orange),
    Fidelisation(Colors.grey),
    ProfileClient(Colors.green)
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: FlashyTabBar(
        iconSize: 24.0,
        backgroundColor: BGColor.primarybg,
        selectedIndex: _currentIndex,
        showElevation: true,
        onItemSelected: onTabTapped,
        items: [
          FlashyTabBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Accueil',
              style: TextStyle(color: BGColor.whitebg),
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.local_gas_station),
            title: Text(
              'Station',
              style: TextStyle(color: BGColor.whitebg),
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.business_center),
            title: Text(
              'Fidelisation',
              style: TextStyle(color: BGColor.whitebg),
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.person_pin),
            title: Text(
              'Profile',
              style: TextStyle(color: BGColor.whitebg),
            ),
          ),
        ],
      ),
    );
  }
}
