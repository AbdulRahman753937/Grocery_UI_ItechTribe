import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey.shade200
                    )
                  )
                ),
              ),
    );
  }
}