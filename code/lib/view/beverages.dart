import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:groceries/components/card.dart';
import 'package:groceries/controllers/item_controller.dart';
import 'package:groceries/view/product_detail.dart';

class BeveragesScreen extends StatefulWidget {
  const BeveragesScreen({super.key});

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

class _BeveragesScreenState extends State<BeveragesScreen> {

    
  final ItemController itemController = Get.put(ItemController());
  
  @override
  Widget build(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Image.asset('assets/icons/Back_button.png')),
                        GestureDetector(
                            onTap: () {},
                            child: Image.asset('assets/icons/filter_icon.png'))
                      ],
                    ),
                    SizedBox(height: 20,),
            //         Expanded(
            //   child: Container(
            //     child: GridView.count(
            //       crossAxisCount: 2,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.all(11.0),
            //           child: ProductCard(
            //             image: 'assets/images/bnana.png',
            //             title: 'Organic Bananas',
            //             subtitle: '7pcs, Priceg',
            //             price: '\$4.99',
            //             onTap: () {
            //               Get.to(ProductDetail());
            //             }),
            //         ),
            //       ],
            //     ),
            //   ),
            // )
          
                  ],
                ),
              ),
            ),
            ]
        ),
      ),
    );
  }
}