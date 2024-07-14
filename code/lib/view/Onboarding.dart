import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/components/button_creator.dart';
import 'package:groceries/view/login_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Screen1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Screen1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Widgets overlaid on the background
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/icons/Carrot.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome\nto our store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Sen',
                        fontSize: 52,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Get your groceries in as fast as one hour',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ButtonCreator.createButton('Get Started', AppColor.greencolor, () {
                    Get.to(LoginView());
                  }),
                  SizedBox(
                    height: 85,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
