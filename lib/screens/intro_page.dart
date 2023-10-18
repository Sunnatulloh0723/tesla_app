import 'package:flutter/material.dart';
import 'package:tesla/screens/car_page.dart';
import 'package:tesla/services/database/cars.dart';
import 'package:tesla/views/intro_page/Custombutton.dart';
import 'package:tesla/views/intro_page/categories.dart';

import '../services/strings.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with TickerProviderStateMixin {
  int page = 0;
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image(
          image: Images1.logo,
          width: 112,
          height: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Center(
              child: Text(
                Strings.tesla,
                style: TextStyle(
                    fontSize: 24, color: Colors.white, fontFamily: 'Gotham'),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    selected = 0;
                    setState(() {});
                  },
                  child: CustomText(
                      text: Strings.modelX,
                      size: 20,
                      color: selected == 0
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                      weight: FontWeight.w400),
                ),
                GestureDetector(
                  onTap: () {
                    selected = 1;
                    setState(() {});
                  },
                  child: CustomText(
                      text: Strings.modelY,
                      size: 38,
                      color: selected == 1
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                      weight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    selected = 2;
                    setState(() {});
                  },
                  child: CustomText(
                      text: Strings.road,
                      size: 20,
                      color: selected == 2
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                      weight: FontWeight.w400),
                ),
              ],
            ),
            Center(
              heightFactor: 1,
              child: Image(
                image: Images1.car1Image1,
                height: 310,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CustomText(
                          text: Strings.mi300,
                          size: 36,
                          color: Colors.white,
                          weight: FontWeight.w700),
                      CustomText(
                          text: Strings.range,
                          size: 14,
                          color: Colors.white,
                          weight: FontWeight.w400),
                    ],
                  ),
                  CustomText(
                      text: '|',
                      size: 45,
                      color: Colors.grey,
                      weight: FontWeight.w100),
                  Column(
                    children: [
                      CustomText(
                          text: Strings.awd,
                          size: 36,
                          color: Colors.white,
                          weight: FontWeight.w700),
                      CustomText(
                          text: Strings.dualMotor,
                          size: 14,
                          color: Colors.white,
                          weight: FontWeight.w400),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: Strings.asseleration,
                    size: 14,
                    color: const Color(0xff979797),
                    weight: FontWeight.w400),
                CustomText(
                    text: Strings.speed,
                    size: 14,
                    color: Colors.white,
                    weight: FontWeight.w500),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: Strings.topSpeed,
                    size: 14,
                    color: const Color(0xff979797),
                    weight: FontWeight.w400),
                CustomText(
                    text: Strings.upTo,
                    size: 14,
                    color: Colors.white,
                    weight: FontWeight.w500),
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 60,
              width: 289,
              child: CustomButton(
                text: Strings.orderNow,
                borderColor: const Color(0xffD01000),
                backgroundColor: Colors.transparent,
                object: const CarPage(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
