import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/home/home_view.dart';
import 'package:groceries/view/login/login_view2.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
                children: [
          Image.asset(
            'assets/images/Screen2_background.png',
            fit: BoxFit.cover, // Use BoxFit to cover the entire screen
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.infinity,
            child: Text(
              'Get your groceries\nwith nectar',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, bottom: 30, right: 20),
            child: 
GestureDetector(
  onTap: () {
    Get.to(LoginView2());
  },
  child: IntlPhoneField(
    inputFormatters: [
      LengthLimitingTextInputFormatter(10), // Adjusted for 10 digits
      FilteringTextInputFormatter.digitsOnly,
    ],
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(top: 11),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    ),
    initialCountryCode: 'PK',
    onChanged: (phone) {
          print(phone.completeNumber);
          if () {
            Get.to(LoginView2());
          }
        },
    validator: (value) {
      if (value == null) {
        return "Please enter your PhoneNo";
      }
      return null;
    },
  ),
),

          ),
          Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text('Or connect with social media')),
          Container(
              width: 320,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(83, 131, 236, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icons/Google.png'),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: GestureDetector(
                      onTap: (){
                        Get.to(HomeScreen());
                      },
                      child: TextButton(
                        onPressed: () {
                          // Get.to(LoginView());
                        },
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w900),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: (AppColor.bluecolor),
                          foregroundColor: (Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
              SizedBox(height: 15,),
              Container(
              width: 320,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(74, 102, 172, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icons/Facebook.png'),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: TextButton(
                      onPressed: () {
                        // Get.to(LoginView());
                      },
                      child: Text(
                        'Continue with Facebook',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.w900),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: (AppColor.bluecolor2),
                        foregroundColor: (Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
              SizedBox(height: 25,)
                
                ],
              ),
        ));
  }
}
