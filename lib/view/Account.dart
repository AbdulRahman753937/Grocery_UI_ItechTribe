import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/components/border_container.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/navigation_bar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 70, left: 20, bottom: 0, right: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: Image.asset('assets/images/profile.png'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Afsar Hossen',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.edit_outlined,
                                color: AppColor.greencolor,
                              ),
                            ],
                          ),
                          Text(
                            'afsarhossen@gmail.com',
                            style: TextStyle(color: Colors.black.withOpacity(.5)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const BorderContainer(),
                buildRow('assets/icons/orders_icon.png', 'Orders'),
                const BorderContainer(),
                buildRow('assets/icons/my_details_icon.png', 'My Details'),
                const BorderContainer(),
                buildRow('assets/icons/delivery_address.png', 'Delivery Address'),
                const BorderContainer(),
                buildRow('assets/icons/vector_icon.png', 'Payment Methods'),
                const BorderContainer(),
                buildRow('assets/icons/promo_cord_icon.png', 'Promo Code'),
                const BorderContainer(),
                buildRow('assets/icons/bell_icon.png', 'Notifications'),
                const BorderContainer(),
                buildRow('assets/icons/help_icon.png', 'Help'),
                const BorderContainer(),
                buildRow('assets/icons/about_icon.png', 'About'),
                const BorderContainer(),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.to(NavigationBaar(initialIndex: 0));
              },
              child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: 320,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icons/logout_icon.png'),
                        const Text(
                          'Log Out',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.greencolor),
                        ),
                        const SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

// method for repeated code
Widget buildRow(String iconPath, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(height: 20, width: 16, child: Image.asset(iconPath)),
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Image.asset('assets/icons/forward_icon.png')
      ],
    ),
  );
}
