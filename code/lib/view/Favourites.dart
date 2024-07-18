import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/components/button_creator.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/Navigation_Bar.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Favourite',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border:
                        Border(
                          top: BorderSide(color: Colors.grey.shade400),
                          bottom: BorderSide(color: Colors.grey.shade400)
                          )),
              child: Column(
                children: [
                  favProduct('Sprite Can', '325ml, Price', 'assets/images/sprite_can.png', '\$4.99'),
                  Container(
                    width: width * 0.9,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.grey.shade400, width: 1))
                    ),
                  ),
                  favProduct('Diet Coke', '355ml, Price', 'assets/images/diet_coke.png', '\$1.99'),
                  Container(
                    width: width * 0.9,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.grey.shade400, width: 1))
                    ),
                  ),
                  favProduct('Apple & Grape Juice', '2L, Price', 'assets/images/apple_grape_juice.png', '\$15.50'),
                  Container(
                    width: width * 0.9,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.grey.shade400, width: 1))
                    ),
                  ),
                  favProduct('Coca Cola Can', '325ml, Price', 'assets/images/cola_can.png', '\$4.99'),
                  Container(
                    width: width * 0.9,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.grey.shade400, width: 1))
                    ),
                  ),
                  favProduct('Pepsi Can', '330ml, Price', 'assets/images/pepsi_can.png', '\$4.99'),
                ],
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonCreator.createButton('Add All to Cart', AppColor.greencolor, (){
                Get.to(NavigationBaar(initialIndex: 2));
              })
            ],
          ),
        ),
      ),
    );
  }

  Padding favProduct(String title, String subtitle, String image, String price) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
            children: [
                Container(
                    height: 55,
                    width: 55,
                    child: Image.asset(image)
                ),
                const SizedBox(width: 30,),
                Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                    const SizedBox(height: 5,),
                                    Text(subtitle)
                                ],
                            ),
                            Row(
                                children: [
                                    Text(price, style: const TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.w500
                                    ),),
                                    const SizedBox(width: 10,),
                                    Image.asset('assets/icons/forward_icon.png')
                                ],
                            ),
                        ],
                    ),
                )
            ],
        ),
    );
}
}