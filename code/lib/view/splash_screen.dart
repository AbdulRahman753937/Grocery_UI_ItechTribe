import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/splash_controller.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (context){
      return Scaffold(
      body: Container(
        color: AppColor.greencolor,
        child: Center(
          child: Image.asset('assets/icons/Group_1.png'),
        ),
      ),
    );
    });
  }
}