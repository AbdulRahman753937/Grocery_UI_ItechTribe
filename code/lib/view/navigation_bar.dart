import 'package:flutter/material.dart';
import 'package:groceries/view/Account.dart';
import 'package:groceries/view/Favourites.dart';
import 'package:groceries/view/Cart.dart';
import 'package:groceries/view/Explore.dart';
import 'package:groceries/view/Home_Screen.dart';
import 'package:groceries/view/FlutterIcons.dart';

class NavigationBaar extends StatefulWidget {
  final int initialIndex;

  const NavigationBaar({super.key, required this.initialIndex});

  @override
  State<NavigationBaar> createState() => _NavigationBaarState();
}

class _NavigationBaarState extends State<NavigationBaar> {
  late int index;

  final screens = [
    const HomeScreen(),
    const Explore(),
    const MyCart(),
    const Favorites(),
    const AccountScreen()
  ];

  @override
  void initState() {
    super.initState();
    index = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.white,
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(83, 177, 117, 1));
            }
            return const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);
          }),
          iconTheme: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return IconThemeData(color: Color.fromRGBO(83, 177, 117, 1));
            }
            return IconThemeData(color: Colors.black);
          }),
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
