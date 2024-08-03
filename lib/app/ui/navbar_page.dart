import 'package:flutter/material.dart';
import 'package:hw_app/app/core/colors/color_data.dart';
import 'package:hw_app/app/ui/event/event_page.dart';
import 'package:hw_app/app/ui/home/home_page.dart';
import 'package:hw_app/app/ui/profile/profile_page.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({super.key});

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int selectedIndex = 0;

  final pageListSahabat = <Widget>[
    const HomePage(),
    const EventPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageListSahabat[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: ColorData.kColorPrimary,
        unselectedItemColor: ColorData.kColorBgAccent2,
        backgroundColor: ColorData.kColorBgAccent,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
