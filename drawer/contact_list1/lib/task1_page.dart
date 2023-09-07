import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  var labelText = '';
  var labelText1 = 'Task1 is completed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              labelText,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  labelText = labelText1;
                });
              },
              child: Text(
                'Click Me',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
