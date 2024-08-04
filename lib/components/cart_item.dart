import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/item_controller.dart';

class CartItem extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;

  const CartItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  final ItemController itemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 95, height: 95,child: Image.asset(widget.image)),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(widget.subtitle),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Image.asset(
                          'assets/icons/cross.png',
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: itemController.decrementItem,
                            child: Container(
                              height: width * 0.04,
                              child: Center(
                                child: Image.asset('assets/icons/minus.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.03),
                          Obx(
                            () => Container(
                              height: width * 0.08,
                              width: width * 0.08,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.green.shade200),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Center(
                                child: Text(
                                  '${itemController.itemCount}',
                                  style: TextStyle(fontSize: width * 0.04),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.03),
                          GestureDetector(
                            onTap: itemController.incrementItem,
                            child: Image.asset('assets/icons/plus.png'),
                          ),
                        ],
                      ),
                      Obx(
                        () => Text(
                          '\$${itemController.totalPrice.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
