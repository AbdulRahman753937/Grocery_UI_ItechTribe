import 'package:flutter/material.dart';

class ExploreBox extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;
  final Color color;
  final Color borderColor;

  const ExploreBox({
    required this.image,
    required this.title,
    required this.onTap,
    required this.color,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 190,
        width: 175,
        decoration: BoxDecoration(
                    border: Border.all(color: borderColor),
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 25, left: 10, bottom: 10, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(height: 80, width: 80, child: Image.asset(image)),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
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
