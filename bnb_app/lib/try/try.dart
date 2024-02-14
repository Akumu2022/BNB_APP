import 'package:flutter/material.dart';

class trial extends StatefulWidget {
  const trial({super.key});

  @override
  State<trial> createState() => _trialState();
}

class _trialState extends State<trial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(color: Colors.blue),
      ),
    );
  }
}
