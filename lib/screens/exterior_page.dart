import 'package:flutter/material.dart';
import 'package:tesla/views/exterior_page/content2.dart';
import '../services/colors.dart';
import '../services/strings.dart';

class ExteriorPage extends StatefulWidget {
  ExteriorPage({Key? key, required this.controller}) : super(key: key);
  TabController controller;
  static int selectedColor = 0;

  @override
  State<ExteriorPage> createState() => _ExteriorPageState();
}

class _ExteriorPageState extends State<ExteriorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white.withOpacity(0.1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 30),
            child: Text(
              Strings.selectColor,
              style: TextStyle(
                  fontSize: 22, fontFamily: 'Gotham', color: Color1.a4bobc),
            ),
          ),
          Image(
            image: selectedCar[ExteriorPage.selectedColor],
            height: 220,
            width: 400,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              Strings.pearlWhite,
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '\$2,000',
              style: TextStyle(fontSize: 20, color: Color1.d01000),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < carColors.length; i++)
                GestureDetector(
                  onTap: () {
                    ExteriorPage.selectedColor = i;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: carColors[i],
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: i == ExteriorPage.selectedColor
                              ? Color1.d01000
                              : Colors.transparent,
                          width: 4),
                    ),
                  ),
                ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Divider(
              thickness: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 20),
            child: Text(
              Strings.performance20,
              style: TextStyle(
                  fontFamily: 'Gotham',
                  color: Colors.black,
                  height: 2,
                  fontSize: 14),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Content2(controller: widget.controller),
        ],
      ),
    );
  }
}
