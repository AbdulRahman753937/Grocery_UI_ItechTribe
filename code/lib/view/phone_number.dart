import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:groceries/view/verification.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
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
                    'Enter your mobile number',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  'Mobile Number',
                  style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w900),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 5, bottom: 30, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(MyPhone());
                    },
                    child: IntlPhoneField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(
                            10), // Adjusted for 10 digits
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
                      onTap: () {
                        Get.to(MyPhone());
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
              ],
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 20),
            child: GestureDetector(
              onTap: (){
                Get.to(VerifyNumber());
              },
              child: Image.asset('assets/icons/Forward_button.png'),
            ),
          )
        ],
      ),
    );
  }
}
