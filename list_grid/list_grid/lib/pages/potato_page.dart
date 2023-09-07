import 'package:flutter/material.dart';

class potato extends StatefulWidget {
  const potato({super.key});

  @override
  State<potato> createState() => _potatoState();
}

class _potatoState extends State<potato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Potato'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(70),
            child: Image.asset(
              'images/potato.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          Text(
            'Potato',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
