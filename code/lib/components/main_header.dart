import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  final ValueChanged<String> onSearchChanged;

  const MainHeader({super.key, required this.onSearchChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              autofocus: false,
              onSubmitted: (val) {},
              onChanged: onSearchChanged,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 18
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search Store',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
