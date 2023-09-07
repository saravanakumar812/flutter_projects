import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  String _resultAdd = '';
  String _resultSub = '';
  String _resultMul = '';
  String _resultDiv = '';
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller1,
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
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
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
            Text(
              'Addtion $_resultAdd',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              ' Substraction $_resultSub',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              ' Multiplication $_resultMul',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              ' Division $_resultDiv',
              style: TextStyle(fontSize: 24),
            ),
            TextButton(
              onPressed: _add,
              child: Text(
                'ADD',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: _sub,
              child: Text(
                'SUB',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: _mul,
              child: Text(
                'MUL',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: _div,
              child: Text(
                'DIV',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _add() {
    int a = int.tryParse(controller1.text) ?? 0;
    int b = int.tryParse(controller2.text) ?? 0;
    setState(() {
      _resultAdd = (a + b).toString();
    });
  }

  void _sub() {
    int a = int.tryParse(controller1.text) ?? 0;
    int b = int.tryParse(controller2.text) ?? 0;
    setState(() {
      _resultSub = (a - b).toString();
    });
  }

  void _mul() {
    int a = int.tryParse(controller1.text) ?? 0;
    int b = int.tryParse(controller2.text) ?? 0;
    setState(() {
      _resultMul = (a * b).toString();
    });
  }

  void _div() {
    double c = double.tryParse(controller1.text) ?? 0;
    double d = double.tryParse(controller2.text) ?? 0;
    setState(() {
      _resultDiv = (c / d).toString();
    });
  }
}
