import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/login_screen.dart';
import 'package:http/http.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void register(String email, String password) async {
    try {
      var response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email': email,
          'password': password
        }
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Signed up successfully');

        Get.to(LoginScreen());
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
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    width: double.infinity,
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Enter your credentials to continue',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Username',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter username',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Email',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter email',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Password',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('By continuing you agree to our'),
                              SizedBox(width: 5),
                              GestureDetector(
                                child: Text(
                                  'Terms of Services',
                                  style: TextStyle(color: AppColor.greencolor),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('and'),
                              SizedBox(width: 5),
                              GestureDetector(
                                child: Text(
                                  'Privacy Policy',
                                  style: TextStyle(color: AppColor.greencolor),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      register(emailController.text, passwordController.text);
                    },
                    child: Container(
                      width: 320,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(83, 177, 117, 1),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: AppColor.greencolor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
