import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.text,
      required this.borderColor,
      required this.backgroundColor,required this.object})
      : super(key: key);
  String text;
  Color borderColor;
  Color backgroundColor;
  var object;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => object));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        side:  BorderSide(
          color: borderColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1000),
        ),
      ),
      child:  Text(
        text,
        style: const TextStyle(
            fontFamily: 'Gotham',
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
