import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Car {
  int id = 0;
  String name;
  String model;
  List<AssetImage> image;
  String carInfo;
  double cost;
  double speed60;

  Car._(
      {required this.id,
      required this.name,
      required this.model,
      required this.image,
      required this.carInfo,
      required this.cost,
      required this.speed60});

  factory Car(
      {required String name,
      required String model,
      required String carInfo,
      required List<AssetImage> image,
      required double cost,
      required double speed60}) {
    int id1 = 0;
    id1++;
    return Car._(
        id: id1,
        name: name,
        model: model,
        image: image,
        carInfo: carInfo,
        cost: cost,
        speed60: speed60);
  }
}
