import 'package:bnb_app/assets/etc.dart/bottomnavbar.dart';
import 'package:bnb_app/components/home_sub.dart';
import 'package:bnb_app/components/pages/profile.dart';
import 'package:bnb_app/components/pages/sign_out.dart';
import 'package:bnb_app/subs/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void goToProfilePage() {
    Navigator.pop(context);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ProfilePage()));
  }

  void signOut() {
    Navigator.pop(context);

    Navigator.push(context, MaterialPageRoute(builder: (context) => SignOut()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(
        onProfileTap: goToProfilePage,
        onSignOut: signOut,
      ),
    );
  }
}
