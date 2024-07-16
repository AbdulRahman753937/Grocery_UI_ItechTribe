import 'package:flutter/material.dart';
import 'package:groceries/view/explore.dart';
import 'package:groceries/view/home_screen.dart';
import 'package:groceries/view/my_flutter_app_icons.dart';

class NavigationBaar extends StatefulWidget {
  const NavigationBaar({super.key, required int initialIndex});

  @override
  State<NavigationBaar> createState() => _ExploreState();
}

class _ExploreState extends State<NavigationBaar> {
  int index = 0;

  final screens = [
    const HomeScreen(),
    const Explore(),
    const Center(
      child: Text(
        'Cart',
        style: TextStyle(fontSize: 72),
      ),
    ),
    const Center(
      child: Text(
        'Favourite',
        style: TextStyle(fontSize: 72),
      ),
    ),
    const Center(
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
          indicatorColor: Colors.white,
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(83, 177, 117, 1));
            }
            return const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);
          }),
          iconTheme: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
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
