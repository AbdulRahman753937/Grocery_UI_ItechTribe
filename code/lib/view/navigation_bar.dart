import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/view/explore.dart';
import 'package:groceries/view/home_screen.dart';
import 'package:groceries/view/my_flutter_app_icons.dart';

class NavigationBaar extends StatefulWidget {
  const NavigationBaar(
      {super.key,
      });

  @override
  State<NavigationBaar> createState() => _ExploreState();
}

class _ExploreState extends State<NavigationBaar> {
  int index = 0;

  final screens = [
    HomeScreen(),
    Explore(),
    Center(
      child: Text(
        'Cart',
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        'Favourite',
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        'Account',
        style: TextStyle(fontSize: 72),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.green.shade100,
          labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ),
        child: NavigationBar(
          backgroundColor: Colors.white,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(MyFlutterApp.shopIcon),
              label: 'Shop',
            ),
            NavigationDestination(
              icon: Icon(MyFlutterApp.exploreIcon),
              label: 'Explore',
            ),
            NavigationDestination(
              icon: Icon(MyFlutterApp.cartIcon),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Icon(MyFlutterApp.favouriteIcon),
              label: 'Favourite',
            ),
            NavigationDestination(
              icon: Icon(MyFlutterApp.accountIcon),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
