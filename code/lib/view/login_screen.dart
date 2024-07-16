import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/home_screen.dart';
import 'package:groceries/view/navigation_bar.dart';
import 'package:groceries/components/button_creator.dart';
import 'package:groceries/view/sign_up_screen.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void login(String email, password) async {
    try {
      var response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Logged in successfully');

        Get.to(NavigationBaar(initialIndex: 0,));
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Image.asset('assets/icons/Carrot2.png')),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 70),
                    width: double.infinity,
                    child: Text(
                      'Login',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 5,
                ),
                Container(
                    width: double.infinity,
                    child: Text('Enter your email and password',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ))),
                SizedBox(
                  height: 40,
                ),
                Container(
                    width: double.infinity,
                    child: Text(
                      'Email',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    width: double.infinity,
                    child: Text(
                      'Password',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                TextFormField(
                  obscureText: _obscureText,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonCreator.createButton('Log In', AppColor.greencolor, () {
                  login(emailController.text.toString(),
                      passwordController.text.toString());
                }),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(SignUpScreen());
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: AppColor.greencolor,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
