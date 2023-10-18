import 'package:flutter/material.dart';
import '../services/colors.dart';
import '../services/database/cars.dart';
import '../services/strings.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: Stack(
          // alignment: const FractionalOffset(1, 2),
          children: [
            Image(
              image: Images1.car1image6,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.65),
              height: 340,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      Strings.summary,
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gotham',
                          color: Color1.a4bobc),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Strings.yourModel,
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$60,700',
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: SizedBox(
                        height: 55,
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                              side: BorderSide(color: Color1.d01000, width: 2),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.apple,
                                size: 32,
                              ),
                              Text(
                                'Pay',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 24,
                                  color: Colors.white,
                                  height: 1.2,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
