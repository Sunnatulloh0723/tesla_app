import 'package:flutter/material.dart';
import '../../services/colors.dart';
import '../../services/strings.dart';

class Content extends StatefulWidget {
  Content({Key? key, required this.controller}) : super(key: key);
  TabController controller;

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 70, right: 70, top: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '3.5s',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Gotham',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '0-60',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gotham',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                        fontSize: 44,
                        color: Colors.grey,
                        height: 1,
                        fontWeight: FontWeight.w100),
                  ),
                  Column(
                    children: [
                      Text(
                        '150mph',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Gotham',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Top speed',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gotham',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                Strings.content,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Gotham',
                  color: Color1.a979797,
                  // overflow: TextOverflow.ellipsis,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  '\$55,700',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                SizedBox(
                  width: 160,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      widget.controller.animateTo(1);
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color1.d01000),
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Gotham',
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
