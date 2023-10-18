import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Color1 {
  static Color d01000 = Color(0xffd01000);
  static Color a979797 = Color(0xff979797);
  static Color a4bobc = Color(0xffa4b0bc);
  static Color a044bb6 = Color(0xff044bb6);
  static Color a45525c = Color(0xff45525c);
  static Color f2f5f8 = Color(0xfff2f5f8);
  static Color e2e2e2 = Color(0xffe2e2e2);
}

List<Color> carColors = [
  Colors.black,
  Colors.blueAccent.shade700,
  Color1.e2e2e2,
  Color1.d01000,
];

List selectedCar = [
  const AssetImage('assets/images/tesla_model_Y_black.png'),
  const AssetImage('assets/images/tesla_model_Y_blue.png'),
  const AssetImage('assets/images/tesla_model_Y_blueGrey.png'),
  const AssetImage('assets/images/tesla_model_Y_red.png'),
];

List selectedSalonColor = [
  const AssetImage('assets/images/whiteSalon.png'),
  const AssetImage('assets/images/blackSalon.png'),
];
