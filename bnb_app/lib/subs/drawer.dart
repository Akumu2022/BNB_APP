import 'package:bnb_app/components/list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final void Function() onProfileTap;
  final void Function() onSignOut;
  MyDrawer({super.key, required this.onProfileTap, required this.onSignOut});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[800],
      child: Column(
        children: [
          //header
          DrawerHeader(
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 64,
            ),
          ),

          MyListTile(
            icon: Icons.home,
            text: "H O M E",
            onTap: () => Navigator.pop(context),
          ),
          MyListTile(
            icon: Icons.person,
            text: "P R O F I L E",
            onTap: onProfileTap,
          ),
          MyListTile(
            icon: Icons.logout,
            text: "LOG  OUT",
            onTap: onSignOut,
          ),
        ],
      ),
    );
  }
}
