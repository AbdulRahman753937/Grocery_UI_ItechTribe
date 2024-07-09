import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:groceries/res/colors/app_color.dart';
import 'package:groceries/view/widgets/main_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   var jsonList;

  void getData() async {
    try{
      var response = await Dio().get('');
      if(response.statusCode == 200){
        setState(() {
          jsonList = response.data["superheroes"] as List;
        });

      }else{
        print('Something went wrong');
      }
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 30,
                height: 30,
                child: Image.asset('assets/icons/Carrot2.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/Location.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              MainHeader(),
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/banner.png'),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Exclusive Offer',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: AppColor.greencolor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 150, // Set a fixed height for the horizontal list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: [
                          Image.asset('assets/images/bnana.png'),
                          ListTile(
                            title: Text('Organic Bananas'),
                            subtitle: Text('7pcs, Priceg'),
                          ),
                          Row(children: [
                            Text("\$4.99"),
                            Image.asset('assets/icons/add.png')
                          ],)
                        ],
                      )
                    );
                  },
                  itemCount: jsonList == null?0:jsonList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
