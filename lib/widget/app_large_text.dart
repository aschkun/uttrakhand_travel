import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  //certain parameter for largeText widget
  double size;
  final String text;
  final Color color;

  AppLargeText({Key? key,
    this.size=30,
    required this.text,
    this.color=Colors.lightGreenAccent}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),

    );
  }
}
