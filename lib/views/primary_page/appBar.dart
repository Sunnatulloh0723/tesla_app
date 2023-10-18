import 'package:flutter/material.dart';
import '../../screens/exterior_page.dart';
import '../../services/colors.dart';
import '../../services/database/cars.dart';
import '../../services/strings.dart';

class CustomAppBar extends StatefulWidget {
   CustomAppBar({Key? key,required this.controller,required this.page}) : super(key: key);
  TabController controller;
  int page;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: Image(
        image: Images1.logo,
        color: Colors.black,
        height: 20,
        width: 120,
      ),
      leading:  IconButton(
       icon: Icon(Icons.arrow_back),
        onPressed: (){
           Navigator.pop(context);
        },
        color: Colors.grey,
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: IgnorePointer(
          ignoring: true,
          child: TabBar(
            controller: widget.controller,
            onTap: (index) {
              widget.page = index;
              setState(() {});
            },
            unselectedLabelColor: Colors.black.withOpacity(0.4),
            labelColor: Colors.black,
            labelStyle:
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: carColors[ExteriorPage.selectedColor],
            tabs: const [
              Tab(
                text: Strings.car,
              ),
              Tab(
                text: Strings.exterior,
              ),
              Tab(
                text: Strings.interior,
              ),
              Tab(
                text: Strings.autoPilot,
              )
            ],
          ),
        ),
      ),
    );
  }
}
