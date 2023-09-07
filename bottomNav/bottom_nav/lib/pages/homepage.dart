import 'package:bottom_nav/pages/page1.dart';
import 'package:bottom_nav/pages/page2.dart';
import 'package:bottom_nav/pages/page3.dart';
import 'package:bottom_nav/pages/page4.dart';
import 'package:bottom_nav/pages/page5.dart';
import 'package:bottom_nav/pages/page6.dart';
import 'package:bottom_nav/pages/page7.dart';
import 'package:bottom_nav/pages/page8.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Page1(),
        SizedBox(
          height: 20,
        ),
        Page2(),
        SizedBox(
          height: 20,
        ),
        Container(margin: EdgeInsets.all(20), child: Page3()),
        SizedBox(
          height: 20,
        ),
        Page4(),
        SizedBox(
          height: 20,
        ),
        Page5(),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        Page6(),
        SizedBox(
          height: 20,
        ),
        Page8(),
        SizedBox(
          height: 20,
        ),
        Page9()
      ]),
    );
  }
}
