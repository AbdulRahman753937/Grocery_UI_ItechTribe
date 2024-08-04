import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/components/button_creator.dart';
import 'package:groceries/components/cart_item.dart';
import 'package:groceries/controllers/item_controller.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/Order_Accepted.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final ItemController itemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'My Cart',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey.shade400),
                          bottom: BorderSide(color: Colors.grey.shade400))),
                  child: Column(
                    children: [
                      const CartItem(
                          image: 'assets/images/bell_pepper_red.png',
                          title: 'Bell Pepper Red',
                          subtitle: '1kg, Price'),
                      Container(
                        width: width * 0.9,
                        height: 1,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey.shade400, width: 1))),
                      ),
                      const CartItem(
                          image: 'assets/images/egg_chicken_red.png',
                          title: 'Egg Chicken Red',
                          subtitle: '4Pcs, Price'),
                      Container(
                        width: width * 0.9,
                        height: 1,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey.shade400, width: 1))),
                      ),
                      const CartItem(
                          image: 'assets/images/bnana.png',
                          title: 'Orgnaic Bananas',
                          subtitle: '12kg, Price'),
                      Container(
                        width: width * 0.9,
                        height: 1,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey.shade400, width: 1))),
                      ),
                      const CartItem(
                          image: 'assets/images/ginger.png',
                          title: 'Ginger ',
                          subtitle: '250gm, Price'),
                      Container(
                        width: width * 0.9,
                        height: 1,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey.shade400, width: 1))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Expanded(
                          child: Container(
                            height: 530,
                            width: double.infinity,
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Checkout',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                        height: 15,
                                        width: 15,
                                        child:
                                            Image.asset('assets/icons/cross.png'))
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, bottom: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                      top: BorderSide(
                                          color: Colors.grey.shade400, width: 1),
                                    )),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Delivery',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.5),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Select Method',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            'assets/icons/forward_icon.png')
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, bottom: 20),
                                  child: Container(
                                    height: 1,
                                    decoration: BoxDecoration(
                                        border: Border(
                                      top: BorderSide(
                                          color: Colors.grey.shade400, width: 1),
                                    )),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Payment',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.5),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/card.png'),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            'assets/icons/forward_icon.png')
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, bottom: 20),
                                  child: Container(
                                    height: 1,
                                    decoration: BoxDecoration(
                                        border: Border(
                                      top: BorderSide(
                                          color: Colors.grey.shade400, width: 1),
                                    )),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Promo Code',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.5),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Pick Discount',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            'assets/icons/forward_icon.png')
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, bottom: 20),
                                  child: Container(
                                    height: 1,
                                    decoration: BoxDecoration(
                                        border: Border(
                                      top: BorderSide(
                                          color: Colors.grey.shade400, width: 1),
                                    )),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total Cost',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.5),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          '\$13.97',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            'assets/icons/forward_icon.png')
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, bottom: 20),
                                  child: Container(
                                    height: 1,
                                    decoration: BoxDecoration(
                                        border: Border(
                                      top: BorderSide(
                                          color: Colors.grey.shade400, width: 1),
                                    )),
                                  ),
                                ),
                                Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text('By continuing you agree to our'),
                                        SizedBox(width: 5),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          child: const Text(
                                            'Terms ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Text('and'),
                                        const SizedBox(width: 5),
                                        GestureDetector(
                                          child: const Text(
                                            'Conditions',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                ButtonCreator.createButton(
                                    'Place Order', AppColor.greencolor, () {
                                      Get.to(const OrderAccepted());
                                    })
                              ],
                            ),
                          ),
                        );
                      },
                    ));
                  },
                  child: Container(
                    height: 50,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: AppColor.greencolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          const Text(
                            'Go to Checkout',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(.1),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Text(
                              '\$12.99',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
