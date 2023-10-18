import 'package:flutter/cupertino.dart';
import 'package:tesla/models/car.dart';

class Images1 {
  static AssetImage car1Image1 = const AssetImage('assets/images/image1.png');
  static AssetImage car1image2 = const AssetImage('assets/images/tesla_model_Y_red.png');
  static AssetImage car1image3 = const AssetImage('assets/images/image3.png');
  static AssetImage car1image4 = const AssetImage('assets/images/whiteSalon.png');
  static AssetImage car1image5 =
      const AssetImage('assets/images/img.png');
  static AssetImage car1image6 = const AssetImage('assets/images/image5.png');
  static AssetImage logo = const AssetImage('assets/icons/logo.png');
}



final cars = [
  Car(
      name: 'Tesla',
      model: 'Model Y',
      carInfo:
          '''Tesla All-Wheel Drive has two independent motors. Unlike traditional all-wheel drive systems, these two motors digitally control torque to the front and rear wheels—for far better handling and traction control. ''',
      image: [
        Images1.car1Image1,
        Images1.car1image2,
        Images1.car1image3,
        Images1.car1image4,
        Images1.car1image5,
        Images1.car1image6
      ],
      cost: 55.700,
      speed60: 3.5),
];
