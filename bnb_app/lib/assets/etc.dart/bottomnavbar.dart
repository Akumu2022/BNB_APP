// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home,
            color: Colors.blue[900],
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: "track order",
          icon: Icon(
            Icons.fire_truck_outlined,
            color: Colors.blue[900],
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: "Cart",
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.blue[900],
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: "Inbox",
          icon: Icon(
            Icons.message_rounded,
            color: Colors.blue[900],
            size: 30,
          ),
        ),
      ],
      selectedLabelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
    );
  }
}
