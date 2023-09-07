//import 'package:facebook/pages/Searchpage.dart';
import 'package:facebook/pages/homepages/page1.dart';
import 'package:facebook/pages/homepages/page2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
      child: Column(verticalDirection: VerticalDirection.down, children: [
        Page1(),
        Container(
          height: 10,
          width: 380,
          color: const Color.fromARGB(100, 131, 127, 127),
        ),
        Page2(),
        Container(
          height: 10,
          width: 380,
          color: const Color.fromARGB(100, 131, 127, 127),
        ),
        //Container(margin: EdgeInsets.all(20), child: Page3()),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        //Page5(),
        SizedBox(
          height: 20,
        ),
        //page6(),
        SizedBox(
          height: 20,
        ),
        //Page7(),
        SizedBox(
          height: 20,
        ),
        //Page8(),
        SizedBox(
          height: 20,
        ),
        //Page9()
      ]),
    )));
  }
}
