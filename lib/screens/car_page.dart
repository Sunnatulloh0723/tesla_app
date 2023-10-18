import 'package:flutter/material.dart';
import 'package:tesla/screens/autopilot_page.dart';
import 'package:tesla/screens/exterior_page.dart';
import 'package:tesla/screens/interior_page.dart';
import 'package:tesla/views/car_page/carInfo.dart';
import '../views/primary_page/appBar.dart';

class CarPage extends StatefulWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> with TickerProviderStateMixin {
  int page = 0;
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: CustomAppBar(
          controller: controller,
          page: page,
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.95),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          CarInfo(controller: controller),
          ExteriorPage(controller: controller),
          InteriorPage(controller: controller),
          AutoPilotPage(controller: controller),
        ],
      ),
    );
  }
}
