import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  var text2 = '';
  var controller4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    text2 = controller4.text;
                  });
                },
                controller: controller4,
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
            ),
            Text(
              '$text2',
              style: TextStyle(color: Colors.black, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
