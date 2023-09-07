import 'package:flutter/material.dart';

class pumpkin extends StatefulWidget {
  const pumpkin({super.key});

  @override
  State<pumpkin> createState() => _pumpkinState();
}

class _pumpkinState extends State<pumpkin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pumpkin'),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(70),
              child: Image.asset(
                'images/pumkin.jpg',
                fit: BoxFit.cover,
                height: 400,
              ),
            ),
            Text(
              'Pumpkin',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        )));
  }
}
