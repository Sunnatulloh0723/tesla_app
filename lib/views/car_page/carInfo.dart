import 'package:flutter/material.dart';
import 'package:tesla/views/intro_page/categories.dart';
import '../../services/colors.dart';
import '../../services/database/cars.dart';
import '../../services/strings.dart';
import 'content.dart';

class CarInfo extends StatefulWidget {
  CarInfo({Key? key, required this.controller}) : super(key: key);
  TabController controller;

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Text(
              Strings.select,
              style: TextStyle(
                  fontFamily: 'Gotham', color: Color1.a4bobc, fontSize: 20),
            ),
          ),
          Image(
            image: Images1.car1image2,
            height: 240,
            width: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    selected = 0;
                    setState(() {});
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: Strings.performance,
                          size: 20,
                          color: selected==0 ? Colors.black : Colors.black.withOpacity(0.4),
                          weight: FontWeight.w400),
                      CustomText(
                          text: Strings.summa,
                          size: 20,
                          color: selected==0 ? Colors.black : Colors.black.withOpacity(0.4),
                          weight: FontWeight.w400),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    selected = 1;
                    setState(() {});
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: Strings.longRange,
                          size: 20,
                          color: selected==1 ? Colors.black : Colors.black.withOpacity(0.4),
                          weight: FontWeight.w400),
                      CustomText(
                          text: '\$46,700',
                          size: 20,
                          color: selected==1 ? Colors.black : Colors.black.withOpacity(0.4),

                          weight: FontWeight.w400),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Content(
            controller: widget.controller,
          ),
        ],
      ),
    );
  }
}
