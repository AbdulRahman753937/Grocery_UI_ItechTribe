import 'package:flutter/material.dart';

class LoginView2 extends StatefulWidget {
  const LoginView2({super.key});

  @override
  State<LoginView2> createState() => _LoginView2State();
}

class _LoginView2State extends State<LoginView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('This is login Screen 2')
        ),
      ),
    );
  }
}