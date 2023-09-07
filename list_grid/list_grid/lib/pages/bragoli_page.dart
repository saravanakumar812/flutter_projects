import 'package:flutter/material.dart';

class bragoli extends StatefulWidget {
  const bragoli({super.key});

  @override
  State<bragoli> createState() => _bragoliState();
}

class _bragoliState extends State<bragoli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BraGoli'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(70),
            child: Image.asset(
              'images/brogoli.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          Text(
            'BraGoli',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
