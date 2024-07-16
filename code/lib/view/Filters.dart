import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/components/button_creator.dart';
import 'package:groceries/components/custom_checkbox.dart';
import 'package:groceries/controllers/filters_controller.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/navigation_bar.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FiltersController());

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
                SizedBox(width: 10)
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.lightgreycolor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25),
                        Text(
                          'Categories',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 25),
                        buildCheckboxRow('Eggs', 0),
                        SizedBox(height: 20),
                        buildCheckboxRow('Noodles & Pasta', 1),
                        SizedBox(height: 20),
                        buildCheckboxRow('Chips & Crisps', 2),
                        SizedBox(height: 20),
                        buildCheckboxRow('Fast Food', 3),
                        SizedBox(height: 30),
                        Text(
                          'Brand',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 25),
                        buildCheckboxRow('Individual Collection', 4),
                        SizedBox(height: 20),
                        buildCheckboxRow('Cocola', 5),
                        SizedBox(height: 20),
                        buildCheckboxRow('Ifad', 6),
                        SizedBox(height: 20),
                        buildCheckboxRow('Kazi Farmas', 7),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ButtonCreator.createButton(
                            'Apply Filter', AppColor.greencolor, () {
                          Get.to(const NavigationBaar(initialIndex: 2,));
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCheckboxRow(String text, int index) {
    final FiltersController filtersController = Get.find();

    return Obx(() => Row(
          children: [
            CustomCheckBox(
              isChecked: filtersController.isChecked[index],
              OnChange: (value) {
                filtersController.toggleCheckbox(index);
              },
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: filtersController.isChecked[index] ? AppColor.greencolor : Colors.black,
              ),
            ),
          ],
        ));
  }
}
