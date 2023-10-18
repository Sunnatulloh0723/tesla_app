import 'package:flutter/material.dart';
import 'package:tesla/services/colors.dart';
import '../services/strings.dart';

class InteriorPage extends StatefulWidget {
  InteriorPage({Key? key, required this.controller}) : super(key: key);
  TabController controller;

  @override
  State<InteriorPage> createState() => _InteriorPageState();
}

class _InteriorPageState extends State<InteriorPage> {
  int selectedSalonColor1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        reverse: true,
        child: Stack(
          children: [
            Image(
              image: selectedSalonColor1 == 0
                  ? selectedSalonColor[0]
                  : selectedSalonColor[1],
              width: double.infinity,
              height: 500,
              fit: BoxFit.fitHeight,
            ),
            Container(
              margin: const EdgeInsets.only(top: 400),
              height: 320,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.selectInterior,
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gotham',
                          color: Color1.a4bobc),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              Strings.blackAndWhite,
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$1,000',
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 20,
                                  color: Color1.d01000),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.allBlack,
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20,
                                color: Colors.black.withOpacity(0.4),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              Strings.included,
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 18,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            selectedSalonColor1 = 0;
                            setState(() {});
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color1.f2f5f8,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: selectedSalonColor1 == 0
                                      ? Color1.d01000
                                      : Colors.transparent,
                                  width: 4),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedSalonColor1 = 1;
                            setState(() {});
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: selectedSalonColor1 == 1
                                      ? Color1.d01000
                                      : Colors.transparent,
                                  width: 4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            '\$58,700',
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 24,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 54,
                            width: 157,
                            child: ElevatedButton(
                              onPressed: () {
                                widget.controller.animateTo(3);
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  side:
                                      BorderSide(color: Color1.d01000, width: 2),
                                ),
                              ),
                              child: const Text(
                                'NEXT',
                                style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
