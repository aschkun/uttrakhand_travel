import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  //certain parameter for largeText widget
  double size;
  final String text;
  final Color color;

  AppText({Key? key,
    this.size=16,
    required this.text,
    this.color=Colors.lightGreen}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontStyle: FontStyle.italic,
        fontSize: size,
      ),

    );
  }
}
