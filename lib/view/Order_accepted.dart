import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/components/button_creator.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/Navigation_Bar.dart';

class OrderAccepted extends StatefulWidget {
  const OrderAccepted({super.key});

  @override
  State<OrderAccepted> createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150, bottom: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Image.asset('assets/images/order_placed.png'),
                  ),
                  const Text(
                    'Your Order has been\naccepted',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Your item has been placed and is on\nit's way to being processed",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(.5)),
                  ),
                ],
              ),
              // SizedBox(height: 20,),
              Column(
                children: [
                  ButtonCreator.createButton('Track Order', AppColor.greencolor, () {
                    Get.to(const NavigationBaar(initialIndex: 4));
                  }),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Get.to(const NavigationBaar(initialIndex: 0));
                    },
                    child: const Text(
                      'Back to home',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
