import 'package:flutter/material.dart';

class cucumber extends StatefulWidget {
  const cucumber({super.key});

  @override
  State<cucumber> createState() => _cucumberState();
}

class _cucumberState extends State<cucumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cucumber'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(70),
            child: Image.asset(
              'images/cucumber.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          Text(
            'Cucumber',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
