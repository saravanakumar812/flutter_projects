//import 'dart:ffi';
//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: calculatorPage(),
    );
  }
}

class calculatorPage extends StatefulWidget {
  const calculatorPage({super.key});

  @override
  State<calculatorPage> createState() => _calculatorPageState();
}

class _calculatorPageState extends State<calculatorPage> {
  String equation = "";
  String result = " ";
  String expressions = " ";

  double equationFontSize = 38.0;
  double resultfontSize = 48.0;

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
        height: MediaQuery.of(context).size.height * buttonHeight,
        color: buttonColor,
        child: TextButton(
          onPressed: () => buttonPressed(buttonText),
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(16.0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2.0),
                  ),
                  side: BorderSide(
                      color: Colors.white, width: 1, style: BorderStyle.solid)),
              backgroundColor: buttonColor),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ));
  }

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equation = "0";
        result = "0";
        equationFontSize = 48.0;
        resultfontSize = 38.0;
      } else if (buttonText == "<=") {
        equationFontSize = 48.0;
        resultfontSize = 38.0;
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        equationFontSize = 48.0;
        resultfontSize = 38.0;
        expressions = equation;
        try {
          Parser p = new Parser();
          Expression exp = p.parse(expressions);
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "error";
        }
      } else {
        equationFontSize = 48.0;
        resultfontSize = 38.0;
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                equation,
                style: TextStyle(fontSize: equationFontSize),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                result,
                style: TextStyle(fontSize: resultfontSize),
              ),
            ),
            Expanded(child: Divider()),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton('9', 0.1, Colors.grey),
                      buildButton('8', 0.1, Colors.grey),
                      buildButton('7', 0.1, Colors.grey),
                      buildButton('+', 0.1, Colors.redAccent)
                    ])
                  ],
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton('6', 0.1, Colors.grey),
                      buildButton('5', 0.1, Colors.grey),
                      buildButton('4', 0.1, Colors.grey),
                      buildButton('-', 0.1, Colors.amber)
                    ])
                  ],
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton('3', 0.1, Colors.grey),
                      buildButton('2', 0.1, Colors.grey),
                      buildButton('1', 0.1, Colors.grey),
                      buildButton('*', 0.1, Colors.blue)
                    ])
                  ],
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton('C', 0.1, Colors.greenAccent),
                      buildButton('0', 0.1, Colors.green),
                      buildButton('=', 0.1, Colors.pinkAccent),
                      buildButton('/', 0.1, Color.fromARGB(255, 144, 182, 55)),
                    ])
                  ],
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton('%', 0.1, Color.fromARGB(255, 85, 183, 183)),
                      buildButton('.', 0.1, Color.fromARGB(255, 150, 49, 208)),
                      buildButton('<=', 0.1, Color.fromARGB(255, 114, 33, 243)),
                      buildButton(
                          '00', 0.1, const Color.fromARGB(255, 33, 243, 117)),
                    ])
                  ],
                ),
              )
            ]),
          ],
        ));
  }
}
