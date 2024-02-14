import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.grey[300],
      ),
      body: ListView(
        children: [
          //profile pic
          Icon(Icons.person, size: 72)

          //user email

          //username

          //bio

          //user posts
        ],
      ),
    );
  }
}
