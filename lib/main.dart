import 'dart:math';

import 'package:demomm/my_home_page.dart';
import 'package:demomm/second_page.dart';
import 'package:demomm/third_page.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: SlideDrawer(
        backgroundColor: Colors.blueAccent,
        rotateAngle: pi/42,
        offsetFromRight: 300,
        items: [
          MenuItem('Home', onTap: (){},icon: Icons.input),
          MenuItem('Project', onTap: (){
            navigatorKey.currentState!.push(
              MaterialPageRoute(builder: (context)=>SecondPage())
            );
          },icon: Icons.icecream),
          MenuItem('Favourite', onTap: (){
            navigatorKey.currentState!.push(
                MaterialPageRoute(builder: (context)=>ThirdPage())
            );
          },icon: Icons.message),
          MenuItem('Profile', onTap: (){},icon: Icons.account_circle),
          MenuItem('Setting', onTap: (){},icon: Icons.ac_unit_outlined),
        ],
        child: MyHomePage(),
      ),
    );
  }
}
