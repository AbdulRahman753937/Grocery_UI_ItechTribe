import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final VoidCallback onTap;

  const ProductCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 230,
      width: 175,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade500),
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 10, bottom: 10, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 80, width: 80,
                  child: Image.asset(image)),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    subtitle,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Image.asset('assets/icons/add.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
