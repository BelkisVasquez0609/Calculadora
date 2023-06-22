import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  iconContent({super.key, required this.text, required this.icon});

  String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff8d8e91),
          ),
        )
      ],
    );
  }
}
