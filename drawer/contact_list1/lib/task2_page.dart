import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  var labelText3 = '';
  var controllerone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              labelText3,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            TextField(
              controller: controllerone,
              decoration: InputDecoration(
                hintText: 'Your Text',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  labelText3 = controllerone.text;
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
