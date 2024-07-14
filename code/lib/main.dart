import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:groceries/components/card.dart';
import 'package:groceries/view/home/home_view.dart';
import 'package:groceries/view/home_screen.dart';
import 'package:groceries/view/login_screen.dart';
import 'package:groceries/view/navigation_bar.dart';
import 'package:groceries/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NavigationBaar()
    );
  }
}