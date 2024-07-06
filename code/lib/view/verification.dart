import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/select_location.dart';
import 'package:pinput/pinput.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({super.key});

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Image.asset('assets/icons/Back_button.png')),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 30),
                  child: Text(
                    'Enter your 4-digit code',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  'Code',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 5, bottom: 30, right: 20),
                  child: const Pinput(
                    length: 4,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20),
                child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Resend Code',
                      style: TextStyle(color: AppColor.greencolor),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 20),
                child: GestureDetector(
                  onTap: () {
                    Get.to(SelectLocation());
                  },
                  child: Image.asset('assets/icons/Forward_button.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
