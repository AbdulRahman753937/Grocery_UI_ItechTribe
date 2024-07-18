import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/components/card.dart';
import 'package:groceries/controllers/item_controller.dart';
import 'package:groceries/view/Filters.dart';
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, bottom: 0, right: 20),
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
                Text(
                  'Beverages',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(Filters());
                    },
                    child: Image.asset('assets/icons/filter_icon.png'))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            
            Expanded(
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 240),
                children: List.generate(
                  12,
                  (index) => ProductCard(
                      image: 'assets/images/diet_coke.png',
                      title: 'Diet Coke',
                      subtitle: '355ml, Price',
                      price: '\$1.99',
                      onTap: () {
                        Get.to(ProductDetail());
                      }),
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
