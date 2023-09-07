import 'package:flutter/material.dart';

class tomato extends StatefulWidget {
  const tomato({super.key});

  @override
  State<tomato> createState() => _tomatoState();
}

class _tomatoState extends State<tomato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tomato'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(70),
            child: Image.asset(
              'images/tomato.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          Text(
            'Tomato',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
