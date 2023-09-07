import 'package:flutter/material.dart';
import 'package:practice/hompage/page1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [Page1()],
      ),
    );
  }
}
