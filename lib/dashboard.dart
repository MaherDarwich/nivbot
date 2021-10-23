// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'setting.dart';
import 'catugary.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int text_index = 0;

  PageController controller =
      PageController(initialPage: 0, viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,),
      body: PageView(
        reverse: true,
        // scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          Catugary(),
          Home(),
          Setting(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          text_index = i;
          controller.animateToPage(i,
              duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          setState(() {});
        },
        backgroundColor: Colors.blueGrey,
// unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedIconTheme: IconThemeData(color: Colors.cyan),
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,

// unselectedFontSize: 14,
// iconSize: 20,
        showSelectedLabels: true,
        showUnselectedLabels: true,

        currentIndex: text_index, // يتعرف على الايقونة التي ضغطت

        items: [
          _navit('icons/1.png', 'Catugary'),
          _navit('icons/home.png', 'Home'),
          _navit('icons/set.png', 'Setting'),
        ],
      ),
    );
  }

  _navit(String img, String label) {
    return BottomNavigationBarItem(
        icon: Image(
          image: AssetImage(img),
          height: 30,
          colorBlendMode: BlendMode.darken,
        ),
        label: label,
        backgroundColor: Colors.white10,
        activeIcon: Container(
          child: Stack(
              alignment: AlignmentDirectional.topCenter,
              overflow: Overflow.visible,
              children: [
                Text(''),
                Positioned(
                    bottom: 1,
                    //  width: 200,
                    //  height: 100,
                    child: Image(
                      image: AssetImage(img),
                      height: 50,
                    )),
              ]),
        ));
  }
}
