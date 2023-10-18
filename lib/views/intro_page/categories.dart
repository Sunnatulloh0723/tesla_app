import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {Key? key,
      required this.text,
      required this.size,
      required this.color,
      required this.weight})
      : super(key: key);
  String text;
  double size;
  Color color;
  FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight,fontFamily: 'Gotham'),
    );
  }
}
