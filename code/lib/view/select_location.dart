import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

  String? selectedZone;
  List<String> zones = ['Islamabad, Karachi', 'Kolkata', 'Pacific Ocean', 'Istanbul'];
  String? selectedArea;
  List<String> areas = ['Islamabad', 'Karachi', 'Lahore', 'Punjab'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset('assets/icons/Back_button.png')),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50, bottom: 50),
                      child: Image.asset('assets/images/Map.png')),
                  Text(
                    'Select Your Location',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Switch on your location to stay in tune with\nwhat's happening in your area",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Your Zone', textAlign: TextAlign.start,)),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    width: double.infinity,
                    child: DropdownButton<String>(
                      hint: Text('Select Zone'),
                      value: selectedZone,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedZone = newValue;
                        });
                      },
                      items: zones.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    child: Text('Your Area', textAlign: TextAlign.start,)),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    width: double.infinity,
                    child: DropdownButton<String>(
                      hint: Text('Select Area'),
                      value: selectedArea,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedArea = newValue;
                        });
                      },
                      items: areas.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        // getX next page here/////////////////////////////////////
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 320,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(83, 177, 117, 1),
                        ),
                        child: Center(
                          child: Text(
                            
                              'Submit',
                              style: TextStyle(
                                
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                        ),
                      ),
                    ),
               
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
