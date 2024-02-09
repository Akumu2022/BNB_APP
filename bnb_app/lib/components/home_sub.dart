import 'package:flutter/material.dart';

class home_sub extends StatefulWidget {
  const home_sub({super.key});

  @override
  State<home_sub> createState() => _home_subState();
}

class _home_subState extends State<home_sub> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 250,
      height: 400,
      child: Stack(
        children: [
          Container(
            width: 250,
            height: 375,
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              image: const DecorationImage(
                image: AssetImage(
                    "lib/assets/nakhu.jpeg"), // Replace with local image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            right: 2,
            child: FloatingActionButton(
                mini: true,
                backgroundColor: Colors.orange,
                child: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          const Positioned(
            bottom: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1 BD ROYSAMBU",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      "Roysambu, Zimmerman",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
