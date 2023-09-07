import 'package:flutter/material.dart';

class Onion extends StatefulWidget {
  const Onion({super.key});

  @override
  State<Onion> createState() => _OnionState();
}

class _OnionState extends State<Onion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onion'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(70),
            child: Image.asset(
              'images/onion.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          Text(
            'Onion',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
