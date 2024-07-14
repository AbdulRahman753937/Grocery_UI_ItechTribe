import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/item_controller.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/widgets/button_creator.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.05),
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
                            child: Image.asset('assets/icons/Share_button.png'))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Container(
                        width: width * 0.85,
                        height: height * 0.25,
                        child: Image.asset(
                          'assets/images/Big_Apple.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Natural Red Apple',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        '1kg, Price',
                        style: TextStyle(
                            fontSize: width * 0.035,
                            color: Colors.black.withOpacity(.5)),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      child: Image.asset('assets/icons/favorite.png'))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: itemController.decrementItem,
                        child: Container(
                            height: width * 0.08,
                            child: Center(
                                child: Image.asset('assets/icons/minus.png'))),
                      ),
                      SizedBox(width: width * 0.03),
                      Obx(
                        () => Container(
                          height: width * 0.12,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green.shade200),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              '${itemController.itemCount}',
                              style: TextStyle(fontSize: width * 0.05),
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
                          fontSize: width * 0.05, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: height * 0.03, horizontal: width * 0.05),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200, width: 1.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Detail',
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w700),
                      ),
                      Image.asset('assets/icons/down_button.png')
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthful and varied diet.',
                    style: TextStyle(
                        fontSize: width * 0.03,
                        color: Colors.black.withOpacity(.5)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.03),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200, width: 1.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nutritions',
                    style: TextStyle(
                        fontSize: width * 0.04, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Container(
                        width: width * 0.1,
                        height: height * 0.03,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          '100gr',
                          style: TextStyle(fontSize: width * 0.025),
                        )),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/forward_icon.png'))
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.03),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200, width: 1.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Review',
                    style: TextStyle(
                        fontSize: width * 0.04, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/stars.png'),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/forward_icon.png'))
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: height * 0.03),
                child: ButtonCreator.createButton(
                    'Add to Basket', AppColor.greencolor, () {})),
          ],
        ),
      ),
    );
  }
}
