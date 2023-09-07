import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 85,
          height: 60,
          color: Color.fromARGB(65, 158, 158, 158),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              'Free Delivery',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Above RS.149',
              style: TextStyle(fontSize: 14),
            ),
          ]),
        ),
        Container(
          width: 214,
          height: 60,
          child: Center(
            child: Text(
              'Delivery to you in 16 minis',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
        Container(
          width: 85,
          height: 60,
          color: const Color.fromARGB(65, 158, 158, 158),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              'Free Delivery',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Above RS.149',
              style: TextStyle(fontSize: 14),
            ),
          ]),
        )
      ],
    );
  }
}
