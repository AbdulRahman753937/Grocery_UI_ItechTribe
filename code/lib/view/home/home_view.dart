import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/login/login_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                        fontFamily: 'Montserrat',
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
                  Container(
                    width: 320,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(83, 177, 117, 1),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(LoginView());
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: (AppColor.greencolor),
                        foregroundColor: (Colors.white),
                      ),
                    ),
                  ),
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
