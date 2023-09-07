import 'package:flutter/material.dart';

class carrot extends StatefulWidget {
  const carrot({super.key});

  @override
  State<carrot> createState() => _carrotState();
}

class _carrotState extends State<carrot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrot'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(70),
            child: Image.asset(
              'images/carrot.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          Text(
            'Carrot',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
