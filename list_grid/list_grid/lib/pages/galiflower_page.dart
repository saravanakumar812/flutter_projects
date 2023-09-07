import 'package:flutter/material.dart';

class galiflower extends StatefulWidget {
  const galiflower({super.key});

  @override
  State<galiflower> createState() => _galiflowerState();
}

class _galiflowerState extends State<galiflower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GaliFlower'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(70),
            child: Image.asset(
              'images/galiflower.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          Text(
            'GaliFlower',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
