// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:groceries/components/explore_box.dart';
// import 'package:groceries/view/beverages.dart';
// import 'package:groceries/view/widgets/main_header.dart';

// class Explore extends StatefulWidget {
//   const Explore({super.key});

//   @override
//   State<Explore> createState() => _ExploreState();
// }

// class _ExploreState extends State<Explore> {
//   int index = 1;

//   final screens = [
//     Center(child: Text('Shop',style: TextStyle(fontSize: 72),),),
//     Explore(),
//     Center(child: Text('Product Details',style: TextStyle(fontSize: 72),),),
//     Center(child: Text('Favourite',style: TextStyle(fontSize: 72),),),
//     Center(child: Text('Account',style: TextStyle(fontSize: 72),),),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
      
//         padding: const EdgeInsets.only(top: 50, left: 20, bottom: 0, right: 20),
//         child: Column(
//           children: [
//             Text(
//               'Find Products',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             MainHeader(),

//             Expanded(
//               child: Container(
//                 child: GridView.count(
//                   crossAxisCount: 2,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/fruits_vegs.png',
//                         title: 'Fresh Fruits & Vegetables',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(83, 177, 117, .1),
//                         borderColor: Color.fromRGBO(83, 177, 117, .7),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/oil_ghee.png',
//                         title: 'Fresh Fruits & Vegetables',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(248, 164, 76, .1),
//                         borderColor: Color.fromRGBO(248, 164, 76, .7),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/meat_fish.png',
//                         title: 'Meat & Fish',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(247, 165, 147, .1),
//                         borderColor: Color.fromRGBO(247, 165, 147, .7),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/bakery_snacks.png',
//                         title: 'Bakery & Snacks',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(211, 176, 224, .1),
//                         borderColor: Color.fromRGBO(211, 176, 224, .7),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/dairy_eggs.png',
//                         title: 'Dairy & Eggs',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(253, 229, 152, .1),
//                         borderColor: Color.fromRGBO(253, 229, 152, .9),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/beverages.png',
//                         title: 'Beverages',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(183, 223, 245, .1),
//                         borderColor: Color.fromRGBO(183, 223, 245, .9),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/fruits_vegs.png',
//                         title: 'Fresh Fruits & Vegetables',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(83, 177, 117, .1),
//                         borderColor: Color.fromRGBO(83, 177, 117, .7),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/oil_ghee.png',
//                         title: 'Fresh Fruits & Vegetables',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(248, 164, 76, .1),
//                         borderColor: Color.fromRGBO(248, 164, 76, .7),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/meat_fish.png',
//                         title: 'Meat & Fish',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(247, 165, 147, .1),
//                         borderColor: Color.fromRGBO(247, 165, 147, .7),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/bakery_snacks.png',
//                         title: 'Bakery & Snacks',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(211, 176, 224, .1),
//                         borderColor: Color.fromRGBO(211, 176, 224, .7),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/dairy_eggs.png',
//                         title: 'Dairy & Eggs',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(253, 229, 152, .1),
//                         borderColor: Color.fromRGBO(253, 229, 152, .9),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: ExploreBox(
//                         image: 'assets/images/beverages.png',
//                         title: 'Beverages',
//                         onTap: () {
//                           Get.to(BeveragesScreen());
//                         },
//                         color: Color.fromRGBO(183, 223, 245, .1),
//                         borderColor: Color.fromRGBO(183, 223, 245, .9),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/components/explore_box.dart';
import 'package:groceries/view/beverages.dart';
import 'package:groceries/components/main_header.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int index = 1;
  String searchQuery = '';

  final List<Product> products = [
    Product(
      image: 'assets/images/fruits_vegs.png',
      title: 'Fresh Fruits & Vegetables',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(83, 177, 117, .1),
      borderColor: Color.fromRGBO(83, 177, 117, .7),
    ),
    Product(
      image: 'assets/images/oil_ghee.png',
      title: 'Fresh Fruits & Vegetables',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(248, 164, 76, .1),
      borderColor: Color.fromRGBO(248, 164, 76, .7),
    ),
    Product(
      image: 'assets/images/meat_fish.png',
      title: 'Meat & Fish',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(247, 165, 147, .1),
      borderColor: Color.fromRGBO(247, 165, 147, .7),
    ),
    Product(
      image: 'assets/images/bakery_snacks.png',
      title: 'Bakery & Snacks',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(211, 176, 224, .1),
      borderColor: Color.fromRGBO(211, 176, 224, .7),
    ),
    Product(
      image: 'assets/images/dairy_eggs.png',
      title: 'Dairy & Eggs',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(253, 229, 152, .1),
      borderColor: Color.fromRGBO(253, 229, 152, .9),
    ),
    Product(
      image: 'assets/images/beverages.png',
      title: 'Beverages',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(183, 223, 245, .1),
      borderColor: Color.fromRGBO(183, 223, 245, .9),
    ),
    Product(
      image: 'assets/images/fruits_vegs.png',
      title: 'Fresh Fruits & Vegetables',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(83, 177, 117, .1),
      borderColor: Color.fromRGBO(83, 177, 117, .7),
    ),
    Product(
      image: 'assets/images/oil_ghee.png',
      title: 'Fresh Fruits & Vegetables',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(248, 164, 76, .1),
      borderColor: Color.fromRGBO(248, 164, 76, .7),
    ),
    Product(
      image: 'assets/images/meat_fish.png',
      title: 'Meat & Fish',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(247, 165, 147, .1),
      borderColor: Color.fromRGBO(247, 165, 147, .7),
    ),
    Product(
      image: 'assets/images/bakery_snacks.png',
      title: 'Bakery & Snacks',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(211, 176, 224, .1),
      borderColor: Color.fromRGBO(211, 176, 224, .7),
    ),
    Product(
      image: 'assets/images/dairy_eggs.png',
      title: 'Dairy & Eggs',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(253, 229, 152, .1),
      borderColor: Color.fromRGBO(253, 229, 152, .9),
    ),
    Product(
      image: 'assets/images/beverages.png',
      title: 'Beverages',
      onTap: () => Get.to(BeveragesScreen()),
      color: Color.fromRGBO(183, 223, 245, .1),
      borderColor: Color.fromRGBO(183, 223, 245, .9),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = products
        .where((product) =>
            product.title.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, bottom: 0, right: 20),
        child: Column(
          children: [
            Text(
              'Find Products',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            MainHeader(
              onSearchChanged: (query) {
                setState(() {
                  searchQuery = query;
                });
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: filteredProducts.map((product) {
                  return Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: ExploreBox(
                      image: product.image,
                      title: product.title,
                      onTap: product.onTap,
                      color: product.color,
                      borderColor: product.borderColor,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String image;
  final String title;
  final Function() onTap;
  final Color color;
  final Color borderColor;

  Product({required this.image, required this.title, required this.onTap, required this.color, required this.borderColor});
}
