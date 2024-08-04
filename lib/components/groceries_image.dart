import 'package:flutter/material.dart';

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 10),
        width: 250,
        height: 105,
        child: Image.asset(
          'assets/images/Pulses.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}