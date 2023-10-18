import 'package:flutter/material.dart';
import '../../services/colors.dart';

class Content2 extends StatefulWidget {
  Content2({Key? key, required this.controller}) : super(key: key);
  TabController controller;

  @override
  State<Content2> createState() => _Content2State();
}

class _Content2State extends State<Content2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.1,
                blurRadius: 5,
                blurStyle: BlurStyle.normal),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              '\$57,700',
              style: TextStyle(
                  fontFamily: 'Gotham', fontSize: 24, color: Colors.black),
            ),
            SizedBox(
              height: 54,
              width: 157,
              child: ElevatedButton(
                onPressed: () {
                  widget.controller.animateTo(2);
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    side: BorderSide(color: Color1.d01000, width: 2),
                  ),
                ),
                child: const Text(
                  'NEXT',
                  style: TextStyle(
                      fontFamily: 'Gotham', fontSize: 20, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
