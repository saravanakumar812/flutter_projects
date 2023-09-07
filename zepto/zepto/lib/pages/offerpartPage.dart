import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
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
