import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:groceries/components/button_creator.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/beverages.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, bottom: 0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset('assets/icons/cross.png')),
                Text(
                  'Filters',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 10,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.lightgreycolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('data')
                  ],
                ),
                ButtonCreator.createButton('Apply Filter', AppColor.greencolor, () {
                    Get.to(BeveragesScreen());
                  }),
              ],
            ),
          )
        ],
      ),
    
    );
  }
}