import 'package:flutter/material.dart';
import 'package:tesla/screens/summary_page.dart';
import '../services/colors.dart';
import '../services/database/cars.dart';
import '../services/strings.dart';

class AutoPilotPage extends StatefulWidget {
  AutoPilotPage({Key? key, required this.controller}) : super(key: key);
  TabController controller;

  @override
  State<AutoPilotPage> createState() => _AutoPilotPageState();
}

class _AutoPilotPageState extends State<AutoPilotPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        reverse: true,
        child: Stack(
          //alignment: const FractionalOffset(1, 4.3),
          children: [
            Image(
              image: Images1.car1image5,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.25),
              height: 310,
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
                      Strings.autoPilot1,
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
                        GestureDetector(
                          onTap: () {
                            selected = 0;
                            setState(() {});
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Strings.fullSelf,
                                style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 20,
                                    color: selected == 0
                                        ? Colors.black
                                        : Colors.black.withOpacity(0.4)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$5,000',
                                style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 20,
                                    color: selected == 0
                                        ? Color1.d01000
                                        : Colors.black.withOpacity(0.4)),
                              ),
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
                              Text(
                                Strings.autoPilot1,
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 20,
                                  color: selected == 1
                                      ? Colors.black
                                      : Colors.black.withOpacity(0.4),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$3,000',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 18,
                                  color: selected == 1
                                      ? Color1.d01000
                                      : Colors.black.withOpacity(0.4),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      Strings.automatic,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Gotham',
                          color: Color1.a979797),
                    ),
                    const SizedBox(
                      height: 10,
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
                            '\$60,700',
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 24,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Summary()));
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
