import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/components/card.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/components/main_header.dart';
import 'package:groceries/view/Product_Details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var jsonList;

  void getData() async {
    try {
      var response = await Dio().get('');
      if (response.statusCode == 200) {
        setState(() {
          jsonList = response.data["superheroes"] as List;
        });
      } else {
        print('Something went wrong');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 30,
                height: 30,
                child: Image.asset('assets/icons/Carrot2.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/Location.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              MainHeader(onSearchChanged: (String value) {  },),
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/banner.png'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          color: AppColor.greencolor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(
                        image: 'assets/images/bnana.png',
                        title: 'Organic Bananas',
                        subtitle: '7pcs, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/apple.png',
                        title: 'Fresh Apples',
                        subtitle: '9pcs, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/bnana.png',
                        title: 'Organic Bananas',
                        subtitle: '7pcs, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/apple.png',
                        title: 'Fresh Apples',
                        subtitle: '9pcs, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/bnana.png',
                        title: 'Organic Bananas',
                        subtitle: '7pcs, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/apple.png',
                        title: 'Fresh Apples',
                        subtitle: '9pcs, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          color: AppColor.greencolor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(
                        image: 'assets/images/bnana.png',
                        title: 'Organic Bananas',
                        subtitle: '7pcs, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/apple.png',
                        title: 'Fresh Apples',
                        subtitle: '9pcs, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/bnana.png',
                        title: 'Organic Bananas',
                        subtitle: '7pcs, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/apple.png',
                        title: 'Fresh Apples',
                        subtitle: '9pcs, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/bnana.png',
                        title: 'Organic Bananas',
                        subtitle: '7pcs, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/apple.png',
                        title: 'Fresh Apples',
                        subtitle: '9pcs, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Groceries',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          color: AppColor.greencolor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 250,
                      height: 105,
                      child: Image.asset(
                        'assets/images/Pulses.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 250,
                      height: 105,
                      child: Image.asset(
                        'assets/images/Rice.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 250,
                      height: 105,
                      child: Image.asset(
                        'assets/images/Pulses.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 250,
                      height: 105,
                      child: Image.asset(
                        'assets/images/Rice.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 250,
                      height: 105,
                      child: Image.asset(
                        'assets/images/Pulses.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(
                        image: 'assets/images/beef.png',
                        title: 'Beef',
                        subtitle: '1kg, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/broiler.png',
                        title: 'Broiler',
                        subtitle: '2kg, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    
                    ProductCard(
                        image: 'assets/images/beef.png',
                        title: 'Beef',
                        subtitle: '1kg, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/broiler.png',
                        title: 'Broiler',
                        subtitle: '2kg, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    
                    ProductCard(
                        image: 'assets/images/beef.png',
                        title: 'Beef',
                        subtitle: '1kg, Priceg',
                        price: '\$4.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    ProductCard(
                        image: 'assets/images/broiler.png',
                        title: 'Broiler',
                        subtitle: '2kg, Priceg',
                        price: '\$7.99',
                        onTap: () {
                          Get.to(ProductDetail());
                        }),
                    
                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: const[
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: 'Home'
      //     )
      // ]),
    );
  }
}
